# Dotfiles

<!--
![christians dotfiles](https://user-images.githubusercontent.com/40700226/216846332-8665a8a4-bbb9-4aef-b578-a5c8cff7a5b1.png)
-->

![christians dotfiles](https://user-images.githubusercontent.com/40700226/218064443-77c3eb08-90a8-48e2-8964-0d035964a7fd.png)

[Inspiration](https://shaky.sh/simple-dotfiles/)

### System

| Type          | Name                                                                    |
| ------------- | ----------------------------------------------------------------------- |
| Windowmanager | [i3](https://i3wm.org/)                                                 |
| Statusbar     | [polybar](https://github.com/polybar/polybar)                           |
| Terminal      | zsh                                                                     |
| promt         | [powerlevel10k](https://github.com/romkatv/powerlevel10k)               |
| Nofifications | dunst                                                                   |
| Icons         | [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) |

### Software

| Type       | Name                                               |
| ---------- | -------------------------------------------------- |
| Office     | PlanMaker                                          |
| MailClient | thunderbird                                        |
| Chat       | ~~rambox~~ [ferdium](https://ferdium.org/download) |
| Editor     | vscode                                             |
| Browser    | firefox                                            |

### Folder structure

| Name         | Path       |
| ------------ | ---------- |
| Repositories | ~/repos/\* |

### Fonts

| Name                     | URL                                     |
| ------------------------ | --------------------------------------- |
| fonts-font-awesome       | -                                       |
| Nerd Fonts               | https://github.com/ryanoasis/nerd-fonts |
| Nerd Fonts (cheat-sheet) | https://www.nerdfonts.com/cheat-sheet   |

### Default shell

```bash
chsh
> /bin/zsh
```

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
sudo apt-get install exa -y

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

### Mount SMB

#### CIFS installation

`sudo apt-get install cifs-utils`


Mount password protected network folders

Using a text editor, create a file for your remote servers logon credential:

gedit ~/.smbcredentials

Enter your Windows username and password in the file:

```text
username=msusername
password=mspassword
```

Save the file, exit the editor.

Change the permissions of the file to prevent unwanted access to your credentials:

`chmod 600 ~/.smbcredentials`

Then edit your /etc/fstab file (with root privileges) to add this line (replacing the insecure line in the example above, if you added it):

//servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8 0 0 

Save the file, exit the editor.

Finally, test the fstab entry by issuing:

sudo mount -a

If there are no errors, you should test how it works after a reboot. Your remote share should mount automatically. 
