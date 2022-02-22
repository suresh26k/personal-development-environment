#!/usr/bin/env bash

#####################################################################################################################################################################################
#       Author  : Suresh Kumar                                                                                                                                                      #
#       Email   : gsuresh26k@gmail.com                                                                                                                                              #
#       GitHub  : suresh26k                                                                                                                                                         #
#       About   : This script can be used to set up development environment on mac                                                                                                  #
#       Use     : Execute this script with --help argument to know how to use this script. Please be careful with what you are doing and you are responsible if anything goes wrong.#
#####################################################################################################################################################################################


# Exit when any command fails
set -e
#set -x

########################################################################################################################
#   Constants                                                                                                          #
########################################################################################################################

# Exporting color codes, so that it can be used in code
export _NORMAL_TEXT=$(echo -en '\033[00;0m')
export _MAIN_TEXT=$(echo -en '\033[00;1m')
export _TASK_TEXT=$(echo -en '\033[00;36m')
export _NOTE_TEXT=$(echo -en '\033[00;33m')

# Not Used Yet
export _SUCCESS_CLR=$(echo -en '\033[00;32m')
export _GENERAL_CLR=$(echo -en '\033[00;33m')
export _NOTE_CLR=$(echo -en '\033[00;35m')
export _ERROR_CLR=$(echo -en '\033[00;31m')

########################################################################################################################
#   Functions                                                                                                          #
########################################################################################################################

function setup_oh_my_zsh() {

    echo -e "\n$_MAIN_TEXT=> Setting up OH-MY-ZSH. $_NORMAL_TEXT"
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

}

function setup_vscode() {
    
    echo -e "\n$_MAIN_TEXT=> Setting up VSCode. $_NORMAL_TEXT"
    
    # Install plugins
    cat vscode/extensions.md | grep -v "^#" | awk /./ | while read extension || [[ -n $extension ]];
    do
        echo "$_TASK_TEXT-> Installing plugin: $extension $_NORMAL_TEXT"
        code --install-extension $extension --force
    done

    # VSCode Settings
    echo "$_TASK_TEXT-> Updating settings file - ${HOME}/Library/Application Support/Code/User/  $_NORMAL_TEXT"
    # cp ./vscode/settings.json  "${HOME}/Library/Application Support/Code/User/"

}
function configure_zsh() {

    if [[ ! -f ~/.zshrc ]]; 
    then

        touch ~/.zshrc
        cat <<EOF >> ~/.zshrc
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi
EOF
        source ~/.zshrc

    fi

}

function setup_shell() {

    echo "$_MAIN_TEXT=> Configuring Shell. $_NORMAL_TEXT"
    # Bash
    if [[ ! -f ~/.bash_profile ]];
    then
        echo "$_TASK_TEXT-> Configuring Bash. $_NORMAL_TEXT"

        # Create
        touch ~/.bash_profile

        # Add Paths
        echo "export PATH=${PATH}:/opt/homebrew/bin" >> ~/.bash_profile

        # Alias
        echo -e "\n# My custom aliases" >> ~/.bash_profile
        echo "alias ll='ls -la'" >> ~/.bash_profile
        echo "alias @new_aws_config='rm ~/.aws/credentials && code ~/.aws/credentials'" >> ~/.bash_profile
        echo "alias @readme='code readme.md'" >> ~/.bash_profile
        echo "alias @bash_profile='code ~/.bash_profile'" >> ~/.bash_profile

        # AWS Parameters
        echo -e "\n# My custom exports" >> ~/.bash_profile
        echo "export AWS_PROFILE=default" >> ~/.bash_profile
        echo "export AWS_PAGER=''" >> ~/.bash_profile

        # mcfly
        echo 'eval "$(mcfly init zsh)"' >>  ~/.bash_profile
    else
        echo "$_NOTE_TEXT-> Skipping bash configuration since file already exists. $_NORMAL_TEXT"
    fi

    # ZSH
    configure_zsh
}

function setup_other_tools() {
    
    echo -e "\n$_MAIN_TEXT=> Setting up other tools. $_NORMAL_TEXT"

    echo "$_TASK_TEXT-> Installing: AWS CLI. $_NORMAL_TEXT"
    # # AWS
    # curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
    # sudo installer -pkg AWSCLIV2.pkg -target /

}

function install_tools() {

    echo -e "\n$_MAIN_TEXT=> Installing tools. $_NORMAL_TEXT"

    # Install brew
    echo "$_TASK_TEXT-> Installing: Brew $_NORMAL_TEXT"
    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install package using brew
    cat tools/brew.md | grep -v "^#" | awk /./ | while read _brew_package || [[ -n $_brew_package ]];
    do
        echo "$_TASK_TEXT-> Installing backage using brew: $_brew_package $_NORMAL_TEXT"
        # brew install $_brew_package
    done

    # Install npm packages
    cat tools/npm.md | grep -v "^#" | awk /./ | while read _npm_package || [[ -n $_npm_package ]];
    do
        echo "$_TASK_TEXT-> Installing npm package: $_npm_package $_NORMAL_TEXT"
        # sudo npm install -g ${_npm_package}
    done

    # Other Tools
    setup_other_tools

}

function main() {

    # Create Bash Profile
    setup_shell

    # VSCode Setup
    setup_vscode

    install_tools
}

########################################################################################################################
#   Execution                                                                                                          #
########################################################################################################################


# Run main function
main