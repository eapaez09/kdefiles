cd $HOME/Documents/kdefiles
git pull

cd

#
## Global Apps
#
# konsave
rm -R $HOME/Documents/kdefiles/dotconfig/konsave
cp -R $HOME/.config/konsave/ $HOME/Documents/kdefiles/dotconfig/
# 
# fastfetch
rm -R $HOME/Documents/kdefiles/dotconfig/fastfetch/
cp -R $HOME/.config/fastfetch/ $HOME/Documents/kdefiles/dotconfig/
#
# fish
rm -R $HOME/Documents/kdefiles/dotconfig/fish/
cp -R $HOME/.config/fish/ $HOME/Documents/kdefiles/dotconfig/
#
# mpv
rm -R $HOME/Documents/kdefiles/dotconfig/mpv/
cp -R $HOME/.config/mpv/ $HOME/Documents/kdefiles/dotconfig/
#
# arch
rm -R $HOME/Documents/kdefiles/archlinux/
cp -R $HOME/.config/archlinux/ $HOME/Documents/kdefiles/

cd $HOME/Documents/kdefiles/
git add -A
git commit -m "$1"
git push

cd
