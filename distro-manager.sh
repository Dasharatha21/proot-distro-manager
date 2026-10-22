#!/data/data/com.termux/files/usr/bin/bash

# Colors for better visual appearance
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
WHITE='\033[1;37m'
NC='\033[0m'

# Check if proot-distro is installed
check_proot() {
    if ! command -v proot-distro &> /dev/null; then
        echo -e "\n${YELLOW}[!] Zaroori tool 'proot-distro' abhi install nahi hai.${NC}"
        echo -e "${CYAN}[*] Chinta na karein, hum isse abhi automatic install kar rahe hain...${NC}\n"
        pkg update -y && pkg install proot-distro -y
        echo -e "\n${GREEN}[✓] Proot-distro safaltapoorvak install ho gaya!${NC}"
        sleep 2
    fi
}

# Header Banner
show_banner() {
    clear
    echo -e "${CYAN}=======================================================${NC}"
    echo -e "${GREEN}         🐧 TERMUX LINUX EASY MANAGER v2.0 🐧${NC}"
    echo -e "${YELLOW}       (Non-Technical Users Ke Liye Aasan Tool)${NC}"
    echo -e "${CYAN}=======================================================${NC}"
    if command -v proot-distro &> /dev/null; then
        echo -e " Status: ${GREEN}[✓] Ready (Proot-Distro Installed Hai)${NC}"
    else
        echo -e " Status: ${RED}[!] Setup Baki Hai (Option 1 Dabayein)${NC}"
    fi
    echo -e "${CYAN}-------------------------------------------------------${NC}"
    echo ""
}

# Helper function to select distro by number (No typing mistakes!)
select_distro_menu() {
    local action_text="$1"
    echo -e "\n${YELLOW}Kaunsa Linux ${action_text} chahte hain? Number chunein:${NC}"
    echo -e "  ${GREEN}[1]${NC} Ubuntu       ${CYAN}(🌟 Best for Beginners - Sabse Aasan)${NC}"
    echo -e "  ${GREEN}[2]${NC} Debian       ${CYAN}(Stable aur Smooth)${NC}"
    echo -e "  ${GREEN}[3]${NC} Alpine       ${CYAN}(Bahut Halka - Kam Internet & Storage)${NC}"
    echo -e "  ${GREEN}[4]${NC} Arch Linux   ${CYAN}(Advanced Users ke liye)${NC}"
    echo -e "  ${GREEN}[5]${NC} Fedora       ${CYAN}(Modern Linux System)${NC}"
    echo -e "  ${GREEN}[6]${NC} Custom Name  ${CYAN}(Puri list dekh kar khud naam likhein)${NC}"
    echo -e "  ${RED}[0]${NC} Back         ${CYAN}(Wapas Main Menu par jayein)${NC}"
    echo ""
    read -p "👉 Number enter karein (0-6): " d_choice

    case $d_choice in
        1) SELECTED_DISTRO="ubuntu" ;;
        2) SELECTED_DISTRO="debian" ;;
        3) SELECTED_DISTRO="alpine" ;;
        4) SELECTED_DISTRO="archlinux" ;;
        5) SELECTED_DISTRO="fedora" ;;
        6)
            echo -e "\n${CYAN}[*] Available Linux Distros ki list:${NC}\n"
            proot-distro list
            echo ""
            read -p "👉 List mein se chota naam (alias) dekh kar likhein (jaise ubuntu): " custom_alias
            SELECTED_DISTRO=$(echo "$custom_alias" | tr '[:upper:]' '[:lower:]' | xargs)
            ;;
        0) SELECTED_DISTRO="" ;;
        *)
            echo -e "\n${RED}[!] Galat number! Kripya 0 se 6 ke beech chunein.${NC}"
            SELECTED_DISTRO=""
            sleep 1
            ;;
    esac
}

# Main Loop
while true; do
    show_banner
    echo -e "${WHITE}Kripya ek number chunein (Choose an option):${NC}\n"
    echo -e "  ${GREEN}[1]${NC} 🛠️  First Time Setup & Update ${YELLOW}(Sabse Pehle Ye Karein)${NC}"
    echo -e "  ${GREEN}[2]${NC} 📋  Available Linux List Dekhein"
    echo -e "  ${GREEN}[3]${NC} 📥  Naya Linux Install Karein ${CYAN}(Ubuntu, Debian, etc.)${NC}"
    echo -e "  ${GREEN}[4]${NC} 🚀  Linux Start / Login Karein ${GREEN}(Use Linux)${NC}"
    echo -e "  ${GREEN}[5]${NC} 🗑️  Linux Delete (Remove) Karein"
    echo -e "  ${GREEN}[6]${NC} ❓  Help & Guide ${PURPLE}(Kaise Use Karein?)${NC}"
    echo -e "  ${RED}[0]${NC} ❌  Exit (Bahar Niklein)"
    echo ""
    read -p "👉 Apna option number likhein (0-6): " choice

    case $choice in
        1)
            echo -e "\n${CYAN}=======================================================${NC}"
            echo -e "${YELLOW}[*] Step 1/2: Termux ko update kiya ja raha hai...${NC}"
            echo -e "${CYAN}=======================================================${NC}\n"
            apt update && yes | apt upgrade
            echo -e "\n${CYAN}=======================================================${NC}"
            echo -e "${YELLOW}[*] Step 2/2: Proot-Distro install ho raha hai...${NC}"
            echo -e "${CYAN}=======================================================${NC}\n"
            pkg install proot-distro -y
            echo -e "\n${GREEN}[✓] Badhai ho! Setup poora ho gaya hai.${NC}"
            echo -e "${YELLOW}👉 Ab aap Main Menu mein Option [3] daba kar Ubuntu/Linux install kar sakte hain.${NC}\n"
            read -p "Menu par wapas jane ke liye [Enter] button dabayein..."
            ;;
        2)
            check_proot
            echo -e "\n${CYAN}[*] Available Linux Distros ki List:${NC}\n"
            proot-distro list
            echo -e "\n${YELLOW}💡 Tip: Jo Linux install karna hai, Option [3] mein jakar aasani se chunein.${NC}"
            read -p "Menu par wapas jane ke liye [Enter] button dabayein..."
            ;;
        3)
            check_proot
            select_distro_menu "INSTALL karna"
            if [ -n "$SELECTED_DISTRO" ]; then
                echo -e "\n${CYAN}[*] '$SELECTED_DISTRO' download aur install ho raha hai...${NC}"
                echo -e "${YELLOW}[i] Kripya intezar karein, internet speed ke hisab se 2-5 minute lag sakte hain.${NC}\n"
                if proot-distro install "$SELECTED_DISTRO"; then
                    echo -e "\n${GREEN}[✓] '$SELECTED_DISTRO' safaltapoorvak install ho gaya! 🎉${NC}"
                    echo -e "${YELLOW}👉 Ab ise chalane ke liye Main Menu mein Option [4] chunein.${NC}"
                else
                    echo -e "\n${RED}[!] Install karne mein kuch samasya aayi (Ya yeh pehle se installed hai).${NC}"
                fi
                echo ""
                read -p "Menu par wapas jane ke liye [Enter] button dabayein..."
            fi
            ;;
        4)
            check_proot
            select_distro_menu "START (Login) karna"
            if [ -n "$SELECTED_DISTRO" ]; then
                echo -e "\n${GREEN}=======================================================${NC}"
                echo -e "${YELLOW}🚀 '$SELECTED_DISTRO' Linux Start Ho Raha Hai...${NC}"
                echo -e "${CYAN}💡 ZAROORI TIP: Linux se wapas bahar aane ke liye${NC}"
                echo -e "${WHITE}   exit${NC} ${CYAN}likh kar Enter dabayein.${NC}"
                echo -e "${GREEN}=======================================================${NC}\n"
                sleep 1
                proot-distro login "$SELECTED_DISTRO"
                echo -e "\n${GREEN}[✓] Aap Linux se wapas Termux Menu mein aa gaye hain.${NC}"
                read -p "Continue karne ke liye [Enter] button dabayein..."
            fi
            ;;
        5)
            check_proot
            select_distro_menu "DELETE (Remove) karna"
            if [ -n "$SELECTED_DISTRO" ]; then
                echo -e "\n${RED}⚠️  Kya aap sach mein '$SELECTED_DISTRO' ko delete karna chahte hain?${NC}"
                read -p "Confirm karne ke liye 'y' likhein, cancel ke liye 'n': " confirm
                if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
                    proot-distro remove "$SELECTED_DISTRO"
                    echo -e "\n${GREEN}[✓] '$SELECTED_DISTRO' ko hata diya gaya hai.${NC}"
                else
                    echo -e "\n${YELLOW}[i] Delete cancel kar diya gaya.${NC}"
                fi
                echo ""
                read -p "Menu par wapas jane ke liye [Enter] button dabayein..."
            fi
            ;;
        6)
            clear
            echo -e "${CYAN}=======================================================${NC}"
            echo -e "${GREEN}        📖 BEGINNER GUIDE (KAISE USE KAREIN?)          ${NC}"
            echo -e "${CYAN}=======================================================${NC}\n"
            echo -e "${YELLOW}Step 1:${NC} Sabse pehle Option ${GREEN}[1]${NC} dabayein taaki Termux ready ho jaye."
            echo -e "${YELLOW}Step 2:${NC} Phir Option ${GREEN}[3]${NC} dabayein aur ${GREEN}[1] Ubuntu${NC} chunein."
            echo -e "        (Ismein thoda internet data lagega aur Ubuntu install ho jayega)."
            echo -e "${YELLOW}Step 3:${NC} Install hone ke baad Option ${GREEN}[4]${NC} dabayein aur Ubuntu start karein."
            echo -e "${YELLOW}Step 4:${NC} Jab Linux ke andar kaam khatam ho jaye, toh bahar aane ke liye"
            echo -e "        bas ${WHITE}exit${NC} type karke Enter dabayein.\n"
            echo -e "${CYAN}-------------------------------------------------------${NC}"
            read -p "Main Menu par wapas jane ke liye [Enter] dabayein..."
            ;;
        0)
            echo -e "\n${GREEN}Dhanyawad! Milte hain agle session mein. 👋${NC}\n"
            exit 0
            ;;
        *)
            echo -e "\n${RED}[!] Galat option! Kripya 0 se 6 ke beech ka number dabayein.${NC}"
            sleep 1.5
            ;;
    esac
done
