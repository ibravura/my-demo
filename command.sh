#!/bin/bash

npx create-react-app my-app
cd my-app

git init
git add .
git commit -m "Initial commit"

winget install --id GitHub.cli

gh repo create my-app

git checkout -b update_logo

# Made necessary changes to logo.svg and App.js files 
# Replaced existing logo with https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
# Replaced existing link  in App.js with https://www.propelleraero.com/dirtmate/

git add .
git commit -m "Updated logo and link"

git status 

git remote add origin https://github.com/ibravura/my-demo.git
  
git push origin update_logo

gh pr create --base master --head update_logo --title "Update logo and link"

gh pr merge update_logo

# https://github.com/ibravura/my-demo.git
