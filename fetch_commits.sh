#!/bin/bash

REPO_OWNER="torvalds"
REPO_NAME="linux"

URL="https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/commits"

curl -s $URL | jq -r '.[] | "Author: \(.commit.author.name), Commit Message: \(.commit.message)"'
