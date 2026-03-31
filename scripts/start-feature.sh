#!/usr/bin/env bash
set -euo pipefail
TICKET=${1:-no-ticket}
SLUG=${2:-work}
BRANCH="feat/${TICKET}-${SLUG}"
git checkout -b "$BRANCH"
DATE=$(date +%F)
mkdir -p docs/design docs/plans
cp docs/templates/design-template.md "docs/design/${DATE}-${SLUG}.md"
cp docs/templates/implementation-plan-template.md "docs/plans/${DATE}-${SLUG}.md"
echo "Created branch $BRANCH and scaffolded docs."
