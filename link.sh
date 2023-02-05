# Arg1 Path in dotfiles repo
# Arg2 Path on system
link () {
    rm $2
    ln -s $1 $2
    echo "Linked $2 -> $1"
}

link ~/repos/dotfiles/i3/config             ~/.config/i3/config
link ~/repos/dotfiles/.zshrc                ~/.zshrc
link ~/repos/dotfiles/polybar/config.ini    ~/.config/polybar/config.ini