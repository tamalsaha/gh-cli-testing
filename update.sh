#!/bin/bash

COMMIT_MSG="gh-cli-testing"

git commit -a -s -m "$COMMIT_MSG"
git push origin HEAD -f
hub pull-request \
    --push \
    --labels automerge \
    --message "$COMMIT_MSG" \
    --message "Signed-off-by: $(git config --get user.name) <$(git config --get user.email)>" || true
