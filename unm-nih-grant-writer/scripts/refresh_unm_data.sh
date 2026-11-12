#!/usr/bin/env bash
# Prints the path of the freshest copy of the UNM data library.
# Tries a shallow clone of the repository; falls back to the snapshot
# bundled with this skill when the network or git is unavailable.
set -u

REPO_URL="${UNM_DATA_REPO:-https://github.com/URAM-MD/UNM-NIH-Agent-}"
SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUNDLED="$SKILL_DIR/unm-data"
CACHE="${UNM_DATA_CACHE:-${TMPDIR:-/tmp}/unm-nih-agent-cache}"
SUBPATH="unm-nih-grant-writer/unm-data"

fresh=""
if command -v git >/dev/null 2>&1; then
  if [ -d "$CACHE/.git" ]; then
    if git -C "$CACHE" pull --ff-only --quiet 2>/dev/null; then fresh="$CACHE/$SUBPATH"; fi
  else
    rm -rf "$CACHE"
    if GIT_LFS_SKIP_SMUDGE=1 git clone --depth 1 --quiet "$REPO_URL" "$CACHE" 2>/dev/null; then
      fresh="$CACHE/$SUBPATH"
    fi
  fi
fi

if [ -n "$fresh" ] && [ -f "$fresh/INDEX.md" ]; then
  echo "SOURCE: repository ($(git -C "$CACHE" log -1 --format='%cd' --date=short 2>/dev/null))"
  echo "UNM_DATA_DIR: $fresh"
elif [ -f "$BUNDLED/INDEX.md" ]; then
  echo "SOURCE: bundled snapshot (repository not reachable or has no data folder yet)"
  echo "UNM_DATA_DIR: $BUNDLED"
else
  echo "SOURCE: none found" >&2
  exit 1
fi
