#!/bin/bash

username=wasabina67
gh repo list ${username} --json name,isPrivate --limit 50 | jq -r 'sort_by(.name)  | .[] | [.name, .isPrivate] | @csv' > repos.csv
