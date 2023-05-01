#!/bin/bash
echo 
echo -e "\033[31m == Confirmation... == \033[0m"
confirm()
{
    read -r -p "${1} [Y/n] " answer
    case "$answer" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}
if confirm "Are you sure to install the program ?"; then
    sudo apt-get update & sudo apt-get full-upgrade -y
    echo "The software will install..."
    sudo apt-get install xorg freerdp2-x11 -y
    sudo rm /home/pi/.profile
    sudo rm /home/pi/.xinitrc
    cd /home/pi/
    sudo wget .profile
    sudo wget 
    cd /
    sudo wget https://raw.githubusercontent.com/felix068/Working_Raspi_Kiosk/main/st.sh
    echo -e "\033[31m Setting your rdp server hostname \033[0m"
    sleep 3
    sudo mkdir /rdp/
    sudo touch /rdp/hostname
    sudo nano /rdp/hostname
    echo -e "\033[31m Setting your rdp server username \033[0m"
    sleep 3
    sudo touch /rdp/username
    sudo nano /rdp/username
    echo -e "\033[31m Setting your rdp server password \033[0m"
    sleep 3
    sudo touch /rdp/password
    sudo nano /rdp/password
    echo -e "\033[31m Setting your rdp server port \033[0m"
    sleep 3
    sudo echo "3389" > /rdp/port
    sudo nano /rdp/port
    echo -e "\033[31m The operation was done ! \033[0m"
    cd /home/pi/
else
    echo "The operation was canceled by the user."
fi

confirm()
{
    read -r -p "${1} [Y/n] " answer
    case "$answer" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}
if confirm "Do you want to restart ?"; then
    echo "Reboot."
    sudo reboot
else
    echo "The operation was canceled."
fi
