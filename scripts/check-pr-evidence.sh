#!/usr/bin/env bash
set -euo pipefail
FILE="${1:-.github/pull_request_template.md}"
for s in "## Design" "## Plan" "## TDD / Tests" "## Verification" "## Risks / Tradeoffs"; do
  grep -q "$s" "$FILE" || { echo "Missing section: $s"; exit 1; }
done
echo "PR template sections present."
