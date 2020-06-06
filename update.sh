#!/bin/bash

git commit -a -s -m "gh-cli-testing"
hub pull-request \
    --push \
    --labels automerge \
    --message "$COMMIT_MSG" \
    --message "Signed-off-by: $(git config --get user.name) <$(git config --get user.email)>"
