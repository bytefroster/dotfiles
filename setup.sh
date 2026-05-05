#!/bin/bash
set -e
echo "[+] Updating system..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing essentials..."
sudo apt install -y git zsh curl wget

echo "[+] Installing Oh My Zsh..."
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[+] Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo "[+] Restoring config..."
DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$DIR/.zshrc" ~/
cp "$DIR/.p10k.zsh" ~/ 2>/dev/null
echo "[+] Setting default shell..."
chsh -s /usr/bin/zsh

echo "[+] Done"
