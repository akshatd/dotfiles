# dotfiles

All my useful configs and scripts.
We usin manjaro now

## install

- windows will create a bunch of partitions, so to make sure manjaro is the last one, create the manjaro partition first and then let windows create the new partitions in the remaining empty space
- install manjaro normally using the minimal image, and just create a root as ext4, efi as fat32 and a swap as swap if you need it. mark the efi partition as boot
- dont fuck with grub cos it will screw you up for sure
- set RTC to UTC in windows: https://wiki.gentoo.org/wiki/System_time

## appearance

- global theme: fluent-round with everything enabled to reset everything
- application style: edit breeze, go to transparency and move it 75%
- plsma style: fluent-round
- colors: fluent-round dark with accent from current wallpaper
- window decorations: fluent-round
- icons: fluent
- mouse cursor: breeze light
- splash screen: none
- login screen sddm: breeze, and change the image to your wallpaper
- move the taskbar to the top
- add spacers to bring the clock widget to the center
- change application launcher icon to alien
- change digital clock text display to 12 pt

## general usability

- set numlock to on on boot by going to keyboard settings
- sert clock to use UTC for hw: timedatectl set-local-rtc 0
- go to window behaviour and select focus follows mouse
- go to task switcher and set visualisation to informative
- go to virtual desktop and create 4 entries
- enable default workspace shortcuts in shortcuts>kwin
- get kalendar from the add/remove list and add your calendars there, might need a reboot for all of it to sync, make sure you set the sync interval to 30 min
- install kdepim-addons and select the add-on in the digital clock widget settings
  - change date format to custom "ddd d MMM" in appearance settings
  - change first day of week to monday in calendar settings
- change DNS to 1.1.1.1 and 8.8.8.8

## conn

- copy ssh folder
- copy .netrc

## git

- to have separate users per directory, follow this: https://stackoverflow.com/questions/4220416/can-i-specify-multiple-users-for-myself-in-gitconfig

## terminal (Konsole)

- make a new profile
- select all mouse copy options
- set theme to breeze
- in general konsole settings, check remember window size
- set font to Hack 10pt

## install oh my zsh

- run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- install autosuggestions: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
- install syntax highlighting: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## visual studio code

- install visual-studio-code-bin
- font: ttf-fira-code
- import the profile

## vim

- make sure you copy over the config from the github page
- do a plugininstall! also, before vundle end dont do any stupid shit like setting colour theme and all
- use solarise theme with dark background!!!
- make sure the terminal also has solarise selected (use that as base then select colours later)
- do the powerline install from the powerline installation manual page
- use vimawesome to install shit, its awesome
- need to compile YCM before it can be used! Also put this in the vimrc so it has some c family support from the start
- let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

## fucking powerline

- install normally using the pip install --user shit
- then go to the rc file of zsh or whatever shell you have
- then modify the PATH to contain /home/$USER/.local/bin
- cos it is here that the powerline executable is kept

## spotify being annoying and obscuring errything

- go ~/.config/spotify
- modify window position, set to flase

## nvidia screen configs not sticking after reboots

- set your settings in the nvidia control panel
- save config to a file
- copy that config to `/etc/X11/xorg.conf.d/20-nvidia.conf` for them to load on startup always
- the important section looks like this

```
Section "Screen"
    Identifier     "Screen0"
    Device         "Device0"
    Monitor        "Monitor0"
    DefaultDepth    24
    Option         "Stereo" "0"
    Option         "nvidiaXineramaInfoOrder" "DFP-6"
    Option         "metamodes" "DP-4: 2560x1440_75 +1080+240 {ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}, DP-2: 1920x1080 +0+0 {rotation=left, ForceCompositionPipeline=On, ForceFullCompositionPipeline=On}"
    Option         "SLI" "Off"
    Option         "MultiGPU" "Off"
    Option         "BaseMosaic" "off"
    SubSection     "Display"
        Depth       24
    EndSubSection
EndSection
```

- do this for each monitor
