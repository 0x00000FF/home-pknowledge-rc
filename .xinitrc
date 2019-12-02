feh --bg-fill ~/Wallpapers/Untitled.png

xrdb ~/.Xresources


export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim &
export XMODIFIERS='@im=uim'

uim-toolbar-gtk3-systray &

export LIBVA_DRIVER_NAME=iHD


exec i3
