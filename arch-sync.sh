cd $HOME/Documents/archfiles
git checkout qtile
git pull

cd

#if [[  $1 == "hp" ]]; then
#    #
#    ## Specific Apps
#    #
#    # rofi
#    rm -R $HOME/Documents/archfiles/configFiles/1080p/rofi/
#    cp -R $HOME/.config/rofi/ $HOME/Documents/archfiles/configFiles/1080p/

#elif [[ $1 == "asus" ]]; then
#    #
#    ## Specific Apps
#    #
#    # rofi
#    rm -R $HOME/Documents/archfiles/configFiles/768p/rofi/
#    cp -R $HOME/.config/rofi/ $HOME/Documents/archfiles/configFiles/768p/

#else
#    echo "Error, don't forget to specify the machine type"

#fi

#
## Global Apps
# 
# picom
rm -R $HOME/Documents/archfiles/configFiles/global/picom/
cp -R $HOME/.config/picom/ $HOME/Documents/archfiles/configFiles/global/
#
# fastfetch
rm -R $HOME/Documents/archfiles/configFiles/global/fastfetch/
cp -R $HOME/.config/fastfetch/ $HOME/Documents/archfiles/configFiles/global/
#
# fish
rm -R $HOME/Documents/archfiles/configFiles/global/fish/
cp -R $HOME/.config/fish/ $HOME/Documents/archfiles/configFiles/global/
#
# mpv
rm -R $HOME/Documents/archfiles/configFiles/global/mpv/
cp -R $HOME/.config/mpv/ $HOME/Documents/archfiles/configFiles/global/
#
# xinitrc
rm -R $HOME/Documents/archfiles/configFiles/global/.xinitrc
cp -R $HOME/.xinitrc $HOME/Documents/archfiles/configFiles/global/
#
# xprofile
rm -R $HOME/Documents/archfiles/configFiles/global/.xprofile
cp -R $HOME/.xprofile $HOME/Documents/archfiles/configFiles/global/
#
# alacritty
rm -R $HOME/Documents/archfiles/configFiles/global/alacritty/
cp -R $HOME/.config/alacritty/ $HOME/Documents/archfiles/configFiles/global/
#
# rofi
rm -R $HOME/Documents/archfiles/configFiles/global/rofi/
cp -R $HOME/.config/rofi/ $HOME/Documents/archfiles/configFiles/global/
#
# qtile
rm -R $HOME/Documents/archfiles/configFiles/global/qtile/
cp -R $HOME/.config/qtile/ $HOME/Documents/archfiles/configFiles/global/

cd $HOME/Documents/archfiles/
git add -A
git commit -m "$1"
git push

cd
