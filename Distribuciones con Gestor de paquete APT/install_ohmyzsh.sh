#!/bin/bash
printf "Installing curl\n"
sudo apt install curl -y
printf "Installing zsh\n"
yes | sudo apt install zsh -y
printf "Downloading and installing oh my zsh\n"
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "Changing theme to agnoster (other themes -> https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)\n"
sed -i "s/robbyrussell/agnoster/g" ~/.zshrc
printf "Installing powerline-fonts in order to render themes properly\n"
sudo apt install fonts-powerline
printf "You need to restart your computer now, do you wanna proceed? y/N\n"
read resp
if [ "$resp" = "y" ] || [ "$resp" = "yes" ]; then
    reboot
printf "Installed succesfully! You need to restart your computer to apply the changes\n"

# References
# https://askubuntu.com/questions/338857/automatically-enter-input-in-command-line
# https://github.com/ohmyzsh/ohmyzsh
# https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/