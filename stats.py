"""Collect the resume's GitHub-derived counts into stats.json.

Needs a token in GITHUB_TOKEN with read access to the repositories below;
private repositories are skipped (their previous values are kept) when the
token cannot see them.
"""

import json
import os
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

USER = "WitherredAway"
OUTPUT = Path(__file__).with_name("stats.json")

POKETWO_REPOS = [
    "poketwo/poketwo",
    "poketwo/poketwo-private",
    "poketwo/rafflesia",
    "poketwo/image-server",
    "poketwo/guiduck",
    "poketwo/data",
    "poketwo/data-private",
    "poketwo/kube-manifests",
]
WEAROS_REPOS = [f"{USER}/NotificationMirror", f"{USER}/CameraRemote"]
YEET_REPO = f"{USER}/Yeet"

API = "https://api.github.com"


def request(path, params=None):
    url = f"{API}{path}"
    if params:
        url += "?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={
        "Accept": "application/vnd.github+json",
        "Authorization": f"Bearer {os.environ['GITHUB_TOKEN']}",
        "User-Agent": f"{USER}-resume",
    })
    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=30) as response:
                return json.load(response)
        except urllib.error.HTTPError as error:
            if error.code == 404:
                return None
            if error.code in (403, 429) and attempt < 3:
                time.sleep(20 * (attempt + 1))
                continue
            raise


def commits(repo):
    """Commits attributed to USER in repo, or None if unreadable."""
    contributors = request(f"/repos/{repo}/contributors", {"per_page": 100})
    if contributors is None:
        return None
    for contributor in contributors:
        if contributor["login"].lower() == USER.lower():
            return contributor["contributions"]
    return 0


def pull_requests(query):
    result = request("/search/issues", {"q": query, "per_page": 1})
    return None if result is None else result["total_count"]


def release_downloads(repo):
    releases = request(f"/repos/{repo}/releases", {"per_page": 100})
    if releases is None:
        return None, None
    downloads = sum(asset["download_count"] for r in releases for asset in r["assets"])
    return downloads, len(releases)


def stars(repo):
    repository = request(f"/repos/{repo}")
    return None if repository is None else repository["stargazers_count"]


def total(values):
    """Sum readable values; None when every source was unreadable."""
    known = [value for value in values if value is not None]
    return sum(known) if known else None


def main():
    previous = json.loads(OUTPUT.read_text()) if OUTPUT.exists() else {}

    poketwo_commits = [commits(repo) for repo in POKETWO_REPOS]
    wearos_downloads, wearos_releases = zip(*(release_downloads(r) for r in WEAROS_REPOS))

    stats = {
        "poketwo": {
            "commits": total(poketwo_commits),
            "pull_requests": pull_requests(f"type:pr author:{USER} org:poketwo"),
            "merged_pull_requests": pull_requests(f"type:pr author:{USER} org:poketwo is:merged"),
            "repositories": sum(1 for count in poketwo_commits if count),
        },
        "yeet": {"commits": commits(YEET_REPO)},
        "wearos": {
            "stars": total(stars(repo) for repo in WEAROS_REPOS),
            "downloads": total(wearos_downloads),
            "releases": total(wearos_releases),
        },
    }

    # Keep the last known value for anything this token could not read.
    for section, counts in stats.items():
        for key, value in counts.items():
            if value is None:
                counts[key] = previous.get(section, {}).get(key)
            if counts[key] is None:
                sys.exit(f"no value for {section}.{key} and no previous one to fall back on")

    OUTPUT.write_text(json.dumps(stats, indent=2, sort_keys=True) + "\n")
    print(json.dumps(stats, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
