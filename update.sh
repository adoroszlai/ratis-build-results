#!/usr/bin/env bash
./ogh archive --user apache --repo ratis --workflow 143383554 --branch master `pwd`
find * -size '+100M' | xargs -r rm -v
git add .
git config user.email "ci@github.com"
git config user.name "Github Actions"
git commit --author "Github Actions <ci@github.com>" -m "periodic update"
git push origin
