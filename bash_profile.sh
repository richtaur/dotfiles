# Include my stinking key
ssh-add -K ~/.ssh/id_rsa

# rampart(master)> cd ..
export PS1="\[\033[32m\]\W\$(get_branch)>\[\033[0m\] "

alias ip='ifconfig | grep inet'
#alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# usage: ogg example.mp3
# example.mp3 -> example.ogg
ogg() {
	vlc -I dummy $1.mp3 --sout="#transcode{scale=1,acodec=vorbis,ab=192,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$1.ogg}" vlc://quit
}

###############################################################################
# Aliases
###############################################################################

# Misc
alias c='clear'
alias l='ls -lah'
alias ll='ls -lah'
alias pg='ping google.com'
alias rc='/usr/bin/vim ~/.bash_profile; source $_'
alias vimrc='vim ~/.vimrc'

# Navigation
alias '..'='cd ..'
alias 'cd..'='cd ..'
alias dev='cd ~/dev'
alias p='cd ~/dev/personal'

# Git
#git config --global core.excludesfile ~/.gitignore_global
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gfa='git fetch -a'
alias gba='git branch -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gd='git difftool'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative'
alias gpullm='git pull origin master'
alias gpushm='git push origin master'
alias gs='git status -sb'

# Applications
alias top='top -o cpu'

##############################################################################
# Global exports
###############################################################################

export CLICOLOR='1'
export EDITOR='/usr/bin/vim'

# PATH
export PATH=''
export PATH="${PATH}:/usr/local/bin"
export PATH="${PATH}:/usr/bin"
export PATH="${PATH}:/bin"
export PATH="${PATH}:/usr/sbin"
export PATH="${PATH}:/sbin"
export PATH="${PATH}:/usr/local/include"

# Android
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export ANDROID_NDK_ROOT="${HOME}/dev/android/android-ndk-r12b"
export ANDROID_NDK_HOME="${ANDROID_NDK_ROOT}"
export PATH="${PATH}:${ANDROID_HOME}"
export PATH="${PATH}:${ANDROID_NDK_ROOT}"

###############################################################################
# Macros
###############################################################################

# Change directory to forefront Finder window folder
cdf() {
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}
