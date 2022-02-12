#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi
