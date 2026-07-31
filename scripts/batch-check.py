#!/usr/bin/env python3
"""模组合规批量核查：输入模组名列表 → Modrinth API 查询许可证/1.12.2 可用性 → 输出审查表
用法: python3 scripts/batch-check.py <模组名文件> <起始索引> <数量>
输出: research/compliance/batch-<n>.csv
"""
import json, sys, time, urllib.request, urllib.parse, difflib

def search(title):
    url = ("https://api.modrinth.com/v2/search?facets=%5B%5B%22versions%3A1.12.2%22%5D%5D"
           f"&query={urllib.parse.quote(title)}&limit=5&index=relevance")
    try:
        with urllib.request.urlopen(url, timeout=15) as r:
            return json.load(r).get('hits', [])
    except Exception as e:
        return [{'error': str(e)}]

def best_match(title, hits):
    for h in hits:
        if 'error' in h:
            return h, 0
    if not hits:
        return None, 0
    best = max(hits, key=lambda h: difflib.SequenceMatcher(None, title.lower(), h['title'].lower()).ratio())
    return best, difflib.SequenceMatcher(None, title.lower(), best['title'].lower()).ratio()

def main():
    names_file, start, count = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
    names = [l.strip() for l in open(names_file) if l.strip()][start:start+count]
    rows = []
    for i, n in enumerate(names):
        hits = search(n)
        hit, ratio = best_match(n, hits)
        if hit and 'error' not in hit and ratio >= 0.6:
            rows.append({
                'query': n, 'matched': hit['title'], 'match_ratio': round(ratio, 2),
                'license': hit.get('license', '?'), 'downloads': hit.get('downloads', 0),
                'slug': hit.get('slug', '')
            })
        else:
            rows.append({'query': n, 'matched': '', 'match_ratio': 0,
                         'license': 'NO_MATCH', 'downloads': 0, 'slug': ''})
        time.sleep(0.3)  # 限速
        if (i+1) % 10 == 0:
            print(f"  进度 {i+1}/{len(names)}", flush=True)
    import csv, os
    os.makedirs('research/compliance', exist_ok=True)
    out = f"research/compliance/batch-{start//50+1}.csv"
    with open(out, 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=['query','matched','match_ratio','license','downloads','slug'])
        w.writeheader(); w.writerows(rows)
    print(f"完成 → {out}")

if __name__ == '__main__':
    main()
