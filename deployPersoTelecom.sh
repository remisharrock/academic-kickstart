#!/bin/zsh

source ~/.zshrc

printf "changing baseurl..."

cp ~/academic/config/_default/config.toml ~/academic/config/_default/config.toml.save

sed -i -E 's/(baseurl.*=)(.*)/\1 "https:\/\/perso.telecom-paristech.fr\/sharrock\/"/' ~/academic/config/_default/config.toml

printf "\033[0;32mDeploying updates locally...\033[0m\n"

cd ~/academic

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

printf "removing old www"
yes | rm -rf ~/www/*

printf "copying new www"

cp -r * ~/www

printf "restoring original baseurl..."

rm -f ~/academic/config/_default/config.toml
mv ~/academic/config/_default/config.toml.save ~/academic/config/_default/config.toml

