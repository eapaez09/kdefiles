cd $HOME/Documents/kdefiles
git pull

cd

rm -R $HOME/.config/fish/ 
rm -R $HOME/.config/fastfetch/
rm -R $HOME/.config/mpv/

# Global dotfiles, configured even if you didn't specify the PC
cp -R $HOME/Documents/kdefiles/dotconfig/fish/ $HOME/.config/
cp -R $HOME/Documents/kdefiles/dotconfig/fastfetch/ $HOME/.config/
cp -R $HOME/Documents/kdefiles/dotconfig/mpv/ $HOME/.config/

if [[ -d "$HOME/.local/share/fonts/Ubuntu" ]]; then
    echo "Fonts already installed." 
else
    echo "Error: Fonts not installed... Installing right now..."
    if [[ -d "$HOME/.local/share/fonts/" ]]; then
        echo "Fonts directory already exists..." 
        cp -R $HOME/Documents/kdefiles/dotconfig/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    else
        echo "Creating fonts directory.."
        mkdir $HOME/.local/share/fonts
        cp -R $HOME/Documents/kdefiles/dotconfig/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    fi
fi
