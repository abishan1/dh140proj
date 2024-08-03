#!/bin/bash

# Navigate to the Quarto project directory
cd my-quarto-project

# Build the site
quarto render

# Navigate back to the root directory
cd ..

# Add changes to git
git add .
git commit -m "Build site"
git push origin main

# Ensure the latest changes from gh-pages are pulled
git pull origin gh-pages

# Deploy the _site directory to gh-pages branch
git subtree push --prefix my-quarto-project/_site origin gh-pages --force