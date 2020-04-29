#!/bin/zsh

source ~/.zshrc

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

cd ~/academic

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
printf "adding changes to a git commit..."
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
printf "commiting changes..."
git commit -m "$msg"

# Push source and build repos.
printf "pushing changes to github..."

git push origin master


