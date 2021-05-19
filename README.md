# dotfiles
All my useful configs and scripts
## setup grub
```
/etc/default/grub
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true
```
## setup terminal
https://www.codementor.io/linux/tutorial/configure-linux-toolset-zsh-tmux-vim
## install terminix
just do it
## install oh my zsh
`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`
- if using antagon-whatever theme in zsh, install the fonts from powerline
- set the lang to en-utf8!
- use solaris as the colour sceme in 
- also install zsh-autosuggestions for fish like autosuggest
- in the config file of suggest, change the highlight colour to red so can see it
- make sure to compile by running make in the outer folder of the custom plugin in the oh my zsh
- restart zsh to see effect
- if wanna add alias, make sure to put a line like source <location of plugin zsh file>
- youll need to do this for git
## setup vim
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
##  spotify being annoying and obscuring errything
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
