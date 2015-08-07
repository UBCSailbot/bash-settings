if [ "$EUID" -ne 0 ]
  then echo "Must be run as root. Please authenticate:"
  sudo ./install.sh
  exit
fi

echo "          |\\"
echo "          | \\"
echo "        /||  \\"
echo "       / ||   \\"
echo "      /  ||    \\"
echo "     /   ||     \\"
echo "    /    ||      \\"
echo "   /     ||       \\"
echo "  /      ||        \\"
echo "  ─ ─ ─ ─  ─ ─ ─ ─ ─" 
echo ""
echo "~~~~~ UBC Sailbot ~~~~~"
echo "      Bash Setup       "
echo $"-----------------------\n"

echo "Setting up nano themes"
git clone https://github.com/nanorc/nanorc.git
cd nanorc
sudo make install
cd ..
rm -rf nanorc
sudo cp .nanorc ~/.nanorc
echo $"Nano config complete\n"

echo "Setting up bash profile"
sudo cp .bash_profile_sailbot ~/.bash_profile_sailbot
sudo echo "source ~/.bash_profile_sailbot" >> ~/.bash_profile
echo $"Bash profile config complete\n"

echo "Setting up Vim theme"
sudo mkdir -p ~/.vim/colors
sudo cp smyck.vim ~/.vim/colors/smyck.vim
sudo echo $"colorscheme smyck" >> ~/.vimrc
sudo echo $"syntax on" >> ~/.vimrc
echo $"Vim config complete\n"

echo "--------------"
echo "Setup complete"
echo "All that's left is to setup the terminal theme from the app's preferences menu."
echo "1. Double click on UBCSailbot.terminal."
echo "2. In terminal preferences, set this theme (UBCSailbot) as default."
echo "3. Restart Terminal.app"

open .
