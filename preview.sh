#!/bin/bash

BRANCH=${1:-"$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)"};
git push origin $BRANCH;
git checkout project-preview;
git fetch;
git reset --hard origin/project-preview;
git merge --no-edit origin/$BRANCH;
git push;
git checkout $BRANCH;
