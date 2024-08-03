#!/bin/bash

# Build the site
quarto render

# Push the generated site to gh-pages branch
git add .
git commit -m "Build site"
git push origin main

# Deploy the _site directory to gh-pages branch
git subtree push --prefix _site origin gh-pages
