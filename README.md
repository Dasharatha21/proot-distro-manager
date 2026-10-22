# Termux Proot-Distro Easy Manager

Naye users ke liye aasan menu tool jisse Linux distros install, login aur remove kiye ja sakte hain.

## Installation (Termux)

    pkg update && pkg install git -y
    git clone https://github.com/YOUR_USERNAME/proot-distro-manager.git
    cd proot-distro-manager
    chmod +x distro-manager.sh
    ./distro-manager.sh

## Manual Commands
* Update Termux: `apt update && yes | apt upgrade`
* Install Proot-Distro: `pkg install proot-distro`
* List Distros: `proot-distro list`
* Install a Distro: `proot-distro install <alias>`
* Login to Distro: `proot-distro login <alias>`
* Remove a Distro: `proot-distro remove <alias>`
