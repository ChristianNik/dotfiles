# Dotfiles

![christians dotfiles](https://user-images.githubusercontent.com/40700226/216846332-8665a8a4-bbb9-4aef-b578-a5c8cff7a5b1.png)

### Link config files

```bash
ln -s ~/Dokumente/repos/dotfiles/i3/config ~/.config/i3/config
```

### System

| Type          | Name          |
| ------------- | ------------- |
| Windowmanager | [i3](https://i3wm.org/)            |
| Statusbar     | [polybar](https://github.com/polybar/polybar)       |
| Terminal      | zsh           |
| promt         | [powerlevel10k](https://github.com/romkatv/powerlevel10k) |
| Nofifications    | dunst     |
| Icons | [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) |

### Software

| Type       | Name        |
| ---------- | ----------- |
| Office     | PlanMaker   |
| MailClient | thunderbird |
| Chat       | rambox      |
| Editor     | vscode      |
| Browser    | firefox     |

### Folder structure

See [here](https://github.com/ChristianNik/pc-system)

### Fonts

| Name       | URL        |
| ---------- | ----------- |
| fonts-font-awesome     | -   |
| Nerd Fonts | https://github.com/ryanoasis/nerd-fonts|


```bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install i3 -y
sudo apt install nitrogen -y
sudo apt install zsh -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install flameshot -y
sudo apt-get install fonts-font-awesome -y

# lockscreen
sudo apt install scrot -y
sudo apt-get install imagemagick imagemagick-doc -y
```

## Polybar

Char overflow

```bash
echo -e '\ue0b8\uF22F'
$ 
```
