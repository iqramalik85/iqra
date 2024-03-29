#!/bin/bash

# Set Git user email and name
git config --global user.email "malikayra85@gmail.com"
git config --global user.name "iqramalik85"

git remote set-url origin git@github.com/iqramalik85/iqra.git
cd iqra

# Read content of file-B
mapfile -t replacement < file-B

# Perform search and replace in file-A
sed -i "s|domains|$replacement|g" file-A

# Commit changes
git add file-A
git commit -am "Replace 'domains' with data from file-B"
git push origin HEAD
