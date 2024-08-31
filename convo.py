#!/usr/bin/env python

import re
import sys
import json


def collect(lower=None, upper=None, since=None, until=None, *excludes):
    lower = 0 if lower is None else lower
    upper = float('inf') if upper is None else upper
    since = float('-inf') if since is None else since
    until = float('inf') if until is None else until
    trans = str.maketrans('', '', '\u200b')
    code = str.maketrans('', '', ' \t\n\r[]{}()-.,_0123456789')
    last = None
    for item in json.load(sys.stdin):
        for mapping in item['mapping'].values():
            if 'message' not in mapping or mapping['message'] is None:
                continue
            if mapping['message']['author']['role'] != 'user':
                continue
            if mapping['message']['content']['content_type'] != 'text':
                continue
            if mapping['message']['create_time'] < since:
                continue
            if mapping['message']['create_time'] > until:
                continue
            for part in mapping['message']['content']['parts']:
                part = part.translate(trans).strip()
                if not part or part == last or not part.translate(code) or exclude(part, *excludes):
                    continue
                last = part
                for p in re.split(r'(?<=[.!?])\s*\n{2,}\s*(?=\w)', part):
                    p = cleanup(p)
                    if lower < len(p) < upper:
                        yield p


def exclude(part, *excludes):
    for pattern in excludes:
        if re.search(pattern, part, re.MULTILINE):
            return True
    return False


def cleanup(part):
    part = part.strip()
    part = re.sub(r'\s+', ' ', part)
    return part


if __name__ == "__main__":
    try:
        lowerupper, _, sinceuntil = sys.argv[1].rpartition('@')
        lower, _, upper = lowerupper.partition('-')
        since, _, until = sinceuntil.partition('-')
        lower = int(lower) if lower.isdigit() else None
        upper = int(upper) if upper.isdigit() else None
        since = int(since) if since.isdigit() else None
        until = int(until) if until.isdigit() else None
    except IndexError:
        lower = upper = since = until = None
    try:
        lines = [*collect(lower, upper, since, until, *sys.argv[2:])]
        print("\n\n".join(lines), end='' if len(lines) == 0 else '\n')
    except BrokenPipeError:
        pass
