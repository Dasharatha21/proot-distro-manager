#!/data/data/com.termux/files/usr/bin/bash

GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

show_banner() {
    clear
    echo -e "${CYAN}=========================================${NC}"
    echo -e "${GREEN}      Termux Proot-Distro Manager${NC}"
    echo -e "${YELLOW}       Easy Tool for New Users${NC}"
    echo -e "${CYAN}=========================================${NC}"
    echo ""
}

while true; do
    show_banner
    echo -e "${YELLOW}Kripya ek option chunein:${NC}"
    echo -e "  ${GREEN}[1]${NC} Setup & Update (Install proot-distro)"
    echo -e "  ${GREEN}[2]${NC} Available Linux Distros ki List dekhein"
    echo -e "  ${GREEN}[3]${NC} Naya Distro Install karein"
    echo -e "  ${GREEN}[4]${NC} Installed Distro mein Login karein"
    echo -e "  ${GREEN}[5]${NC} Distro Remove (Delete) karein"
    echo -e "  ${RED}[0]${NC} Exit (Bahar niklein)"
    echo ""
    read -p "Apna option enter karein (0-5): " choice

    case $choice in
        1)
            echo -e "\n${CYAN}[*] Termux update aur proot-distro install ho raha hai...${NC}\n"
            apt update && yes | apt upgrade
            pkg install proot-distro -y
            echo -e "\n${GREEN}[✓] Setup poora ho gaya!${NC}"
            read -p "Menu par jane ke liye Enter dabayein..."
            ;;
        2)
            echo -e "\n${CYAN}[*] Available Distros ki list:${NC}\n"
            proot-distro list
            echo ""
            read -p "Menu par jane ke liye Enter dabayein..."
            ;;
        3)
            echo -e "\n${CYAN}[*] Available Distros:${NC}\n"
            proot-distro list
            echo ""
            read -p "Install karne ke liye distro ka naam (alias) likhein (e.g. ubuntu): " alias_name
            if [ -n "$alias_name" ]; then
                proot-distro install "$alias_name"
            else
                echo -e "\n${RED}[!] Aapne koi naam nahi likha!${NC}"
            fi
            read -p "Menu par jane ke liye Enter dabayein..."
            ;;
        4)
            echo ""
            read -p "Login karne ke liye distro ka naam (alias) likhein (e.g. ubuntu): " alias_name
            if [ -n "$alias_name" ]; then
                proot-distro login "$alias_name"
            else
                echo -e "\n${RED}[!] Aapne koi naam nahi likha!${NC}"
            fi
            read -p "Menu par jane ke liye Enter dabayein..."
            ;;
        5)
            echo ""
            read -p "Remove karne ke liye distro ka naam (alias) likhein: " alias_name
            if [ -n "$alias_name" ]; then
                proot-distro remove "$alias_name"
            else
                echo -e "\n${RED}[!] Aapne koi naam nahi likha!${NC}"
            fi
            read -p "Menu par jane ke liye Enter dabayein..."
            ;;
        0)
            echo -e "\n${GREEN}Dhanyawad! Exiting...${NC}\n"
            exit 0
            ;;
        *)
            echo -e "\n${RED}[!] Galat option! 0 se 5 ke beech chunein.${NC}"
            sleep 1
            ;;
    esac
done
