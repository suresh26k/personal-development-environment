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
# code --install-extension ms-python.python
# code --install-extension firefox-devtools.vscode-firefox-debug
# code --install-extension 2gua.rainbow-brackets
# code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension eamodio.gitlens

#  # GitHub
#  brew install gh
