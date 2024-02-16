#!/bin/bash

# Read content of file-B
replacement=$(cat file-B)

# Perform search and replace in file-A
sed -i "s/domains/$replacement/g" file-A

# Commit changes
git add file-A
git commit -m "Replace 'domains' with data from file-B"
git push origin main
