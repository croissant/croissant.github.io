#!/bin/bash

echo "Hello Github Actions" > docs/index.html
git config --local user.name $(git log -1 --pretty=format:"%an")
git config --local user.email $(git log -1 --pretty=format:"%ae")
git remote set-url origin git@github.com:${GITHUB_REPOSITORY}.git
git add docs
git commit -m "Actions Test."
git push origin main

