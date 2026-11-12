# ArchBang Classic login shell configuration
# Starts X (openbox) on tty1

. $HOME/.bashrc

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
