# zyn0x-init
A dual-purpose script delivering a stylized hacker aesthetic alongside unattended system upgrades to keep your environment secure and up-to-date.

# Zyn0x Term-Init & Auto-Updater 🚀

A dual-purpose bash utility that delivers a sleek, customized terminal boot sequence while automatically maintaining system packages. Designed for an optimal "hacker" aesthetic, this script runs a stylized typewriter animation and simultaneously checks for network connectivity to perform unattended system updates.

## Features
* **Aesthetic Boot Sequence:** Utilizes hand-coded ANSI cursor loops, `figlet`, and `lolcat` for a smooth, massive typewriter animation effect.
* **Network Detection:** Automatically pings out to verify an active internet connection before attempting any package downloads.
* **Automated Maintenance:** If a network is established, it seamlessly executes system updates and upgrades (`apt update && apt upgrade`) in the background.

## Prerequisites
To get the full visual experience and allow the script to run updates, you need:
1. A Debian-based Linux environment (Ubuntu, Kali Linux, Parrot OS, etc.)
2. `figlet` and `lolcat` installed on your system:
```bash
sudo apt update
sudo apt install figlet lolcat
## Prerequisites

1. Clone this repository to your local machine:

Bash

git clone [https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git](https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git)

    Navigate into the directory:

Bash

cd YOUR-REPO-NAME

    Make the script executable:

Bash

chmod +x zyn0x-init.sh

Usage

Because this script automatically updates system packages, it must be run with root privileges.

Run the script using sudo:
Bash

sudo ./zyn0x-init.sh

Customization

You can easily personalize the animated banners:

    Open the script in your favorite text editor (e.g., nano zyn0x-init.sh).

    Locate the text1 and text2 variables and modify them to display your own handle, greeting, or system name.

Author

Zyn0x - Ahamad


### **One quick tip for your script:**
Since you are adding an update feature, make sure your script checks for the network quietly. You can do this by pointing the output of your `ping` command to `/dev/null` (the Linux "black hole") so it doesn't mess up your beautiful terminal animation. 

A quick example of a silent network check looks like this:
```bash
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -e "\e[1;32mNetwork established. Updating system...\e[0m"
  # Put your apt update && apt upgrade -y commands here
else
  echo -e "\e[1;31mNo network. Skipping updates...\e[0m"
fi
