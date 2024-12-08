#!/bin/bash

username=wasabina67
gh repo list ${username} --json name,isPrivate --limit 100 | jq -r 'sort_by(.name)  | .[] | [.name, .isPrivate] | @csv' > repos.csv
# sed -i 's/"//g' repos.csv
