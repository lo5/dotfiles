set -x

cp \
  ~/.alacritty.yml \
  ~/.fonts.conf \
  ~/.ideavimrc \
  ~/.ripgrep \
  ~/.tmux.conf \
  ~/.vimrc \
  ~/.xinitrc \
  ~/.zshrc \
  ~/vim-tips.txt \
  .

cp ~/.config/bspwm/bspwmrc .config/bspwm/
cp ~/.config/sxhkd/sxhkdrc .config/sxhkd/
cp ~/.config/rofi/config.rasi .config/rofi/
cp ~/.config/cmus/rc .config/cmus/
cp ~/.config/ranger/rc.conf .config/ranger/
cp ~/.config/neofetch/config.conf .config/neofetch/

