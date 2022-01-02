#!/usr/bin/env bash

# # Bash -------
# touch ~/.bash_profile

# # Paths
# echo "export PATH=${PATH}:/opt/homebrew/bin" >> ~/.bash_profile


# Alias
# echo "alias ll='ls -la'" >> ~/.bash_profile
# #-------------



# # ZSH ---------
# touch ~/.zshrc
# cat <<EOF >> ~/.zshrc
# if [ -f ~/.bash_profile ]; then 
#     . ~/.bash_profile;
# fi
# EOF
# source ~/.zshrc
# # -------------

# Install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install iTerm2
# brew install --cask iterm2


# # VSCODE Plugins

## Python
# code --install-extension ms-python.python

## Firefox Dev Tools
# code --install-extension firefox-devtools.vscode-firefox-debug

## Rainbow Brackets
# code --install-extension 2gua.rainbow-brackets

## For remote development over SSH
# code --install-extension ms-vscode-remote.remote-ssh-edit
# code --install-extension ms-vscode-remote.remote-ssh

## GitLens
# code --install-extension eamodio.gitlens

## 
# code --install-extension quicktype.quicktype

## Creating several projects
# code --install-extension alefragnani.project-manager

## Sourcery - For code quality
# code --install-extension sourcery.sourcery

## For Docker
# code --install-extension ms-azuretools.vscode-docker

## ToDo
# code --install-extension gruntfuggly.todo-tree

## For Boto3
# code --install-extension boto3typed.boto3-ide

## For VIM
# code --install-extension vscodevim.vim

## Mermaid Diagram
# code --install-extension bierner.markdown-mermaid

## GitHub
#  brew install gh

## JSON Formatting
code --install-extension mohsen1.prettify-json

# # AWS
# curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
# sudo installer -pkg AWSCLIV2.pkg -target /

# # Oh My ZSH -------------

# # Install
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # Fonts - https://github.com/powerline/fonts
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

# # Theme - https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster
# sed -i ''  's/^ZSH_THEME.*$/ZSH_THEME="agnoster"/g' ~/.zshrc

# # Path
# pip3 install --user git+git://github.com/powerline/powerline
# # After installing fonts, add fonts in appropriate app
# # - iTerm2 => Preference -> Profile -> Text -> Font
# # - vscode => Preference -> setting -> Font Family -> Add ('DejaVu Sans Mono for Powerline')

# # Update PS1
# # export PS1='%{%f%b%k%}$(build_prompt)'

# # Install AWS CLI
# curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
# sudo installer -pkg AWSCLIV2.pkg -target /

# # Install CDK
# sudo npm install -g aws-cdk

# -----------------------


# Vagrant
# brew install vagrant
# Vagrant Setup on M1 => https://gist.github.com/sbailliez/f22db6434ac84eccb6d3c8833c85ad92