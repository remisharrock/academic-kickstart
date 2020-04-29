#!/bin/zsh

source ~/.zshrc

printf "changing baseurl..."

cp ~/academicRemi/config/_default/config.toml ~/academicRemi/config/_default/config.toml.save

sed -i -E 's/(baseurl.*=)(.*)/\1 "https:\/\/perso.telecom-paristech.fr\/sharrock\/"/' ~/academicRemi/config/_default/config.toml

printf "\033[0;32mDeploying updates locally...\033[0m\n"

cd ~/academicRemi

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

printf "removing old www"
yes | rm -rf ~/www/*

printf "copying new www"

cp -r * ~/www

printf "restoring original baseurl..."

rm -f ~/academicRemi/config/_default/config.toml
mv ~/academicRemi/config/_default/config.toml.save ~/academicRemi/config/_default/config.toml

