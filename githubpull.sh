#!/bin/zsh

set -e

source ~/.zshrc

printf "Pulling the latest version..."

cd ~/academic

git pull

printf "done!"
