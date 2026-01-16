#!/bin/bash

echo "Creating project…"

mkdir project
cd project

git init

# Create files and folders
touch README.md
mkdir resources
touch "resources/family picture.jpg"
touch resources/icon.png
touch resources/logo.png

touch settings.conf

mkdir -p src/database
mkdir -p src/profile
touch src/program.java

# First commit
git add .
git commit -m "initial commit"
sleep 3

echo "Setup project…"

echo "Welcome to my project" > README.md
rm -rf src/profile
rm -f "resources/family picture.jpg"

git add .
git commit -m "Setup project: update README and remove files"
sleep 3

ls resources
echo "Setup javascript…"

mv src/program.java src/program.js
echo "console.log('JavaScript works!');" > src/program.js
node src/program.js

git add .
git commit -m "Setup JavaScript: rename file and add JS code"

ls ~

echo "All done!"
