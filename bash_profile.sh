export COMPUTERNAME='Belmont'

# Set iTerm's tab titles
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${COMPUTERNAME}: ${PWD/#$HOME/~}\007"'

alias gvimrc='vim ~/.gvimrc'
alias ip='ifconfig | grep inet'
alias lakitu='ssh richtaur@74.207.252.123'
alias sshldg='ssh git@dev.lostdecadegames.com'
alias osrc='vim ~/dev/projects/dotfiles/belmont/osx_setup.md'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias desktopcleanup='rm ~/Desktop/Screen*\(*.png'

# usage: ogg example.mp3 example.ogg
ogg() {
	vlc -I dummy $1 --sout="#transcode{scale=1,acodec=vorbis,ab=192,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$2}" vlc://quit
}

# usage: ogg96 example.mp3 example.ogg
ogg96() {
	vlc -I dummy $1 --sout="#transcode{scale=1,acodec=vorbis,ab=96,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$2}" vlc://quit
}

tmp() {
	scp -r $1 richtaur@74.207.252.123:/home/richtaur/dev/projects/richtaur.com/misc/tmp/
	echo http://www.richtaur.com/misc/tmp/$1 | pbcopy
	echo "Done! Uploaded to http://www.richtaur.com/misc/tmp/$1 (it's in your copy buffer)."
}

###############################################################################
# Sources
###############################################################################

source /usr/local/etc/bash_completion.d/git-completion.bash

###############################################################################
# Aliases
###############################################################################

# Misc
alias '.l'='..; l'
alias c='clear'
alias ds='djinn serve'
alias flushdns='dscacheutil -flushcache'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias l='ls -lah'
alias ll='ls -lah'
alias rc='/usr/bin/vim ~/.bash_profile; source $_'
alias vimrc='vim ~/.vimrc'

# Navigation
alias '..'='cd ..'
alias 'cd-'='cd -'
alias 'cd..'='cd ..'
alias art='cd ~/art'
alias dev='cd ~/dev'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias lostcast='cd ~/audio/Logic/Lostcast'
alias manor='cd ~/dev/lost_decade/manor; jekyll'
alias p='cd ~/dev/projects'

# Git
git config --global user.name "Matt Hackett"
git config --global user.email richtaur@gmail.com
git config --global core.excludesfile ~/.gitignore_global
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gfa='git fetch -a'
alias gba='git branch -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gd='git difftool'
alias gitsubup='git submodule update --init'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative -n 100'
alias gpullm='git pull origin master'
alias gpushm='git push origin master'
alias grem='git remote -v'
alias gs='git status'

# Applications
alias telog='tail -f /var/log/apache2/error_log'
alias top='top -o cpu'

##############################################################################
# Global exports
###############################################################################

export CLICOLOR='1'
export EDITOR='/usr/bin/vim'
export PATH=''
export PATH="${PATH}:/opt/local/bin"
export PATH="${PATH}:/opt/local/sbin"
export PATH="${PATH}:/usr/local/bin"
export PATH="${PATH}:/usr/bin"
export PATH="${PATH}:/bin"
export PATH="${PATH}:/usr/sbin"
export PATH="${PATH}:/sbin"
export PATH="${PATH}:/usr/X11/bin"
export PATH="${PATH}:/opt/local/include"
export PATH="${PATH}:/opt/local/apache2/include"
export PATH="${PATH}:/usr/local/include"
export PATH="${PATH}:/usr/local/share/npm/bin"
export PATH="${PATH}:${HOME}/dev/lost_decade/djinn/tools/bin"

# Set the command prompt, eg:
# [richtaur@Belmont:Lost Decade](master)> cd ..
export PS1="[\e[0;32m\]\u@${COMPUTERNAME}:\W\[\e[m\]]\[\e[1;32m\]\[\e[m\]\$(get_branch)> "

###############################################################################
# Macros
###############################################################################

cpfilename() {
	ls $1 | pbcopy
}

lad() {
	ls -lah $1 | grep ^d
}

lameit() {
	lame -V 4 $1.wav
	mv $1.wav.mp3 $1.mp3
	rm $1.wav
}

png() {
	ls -lh $1
	pngcrush -q $1 tmp.png
	mv tmp.png $1
	ls -lh $1
}

croppngs() {
	find ./ -name "*.png" -exec mogrify -crop $1 {} \;
}

resizepngs() {
	find ./ -name "*.png" -exec mogrify -scale $1 {} \;
}

untargz() {
	gzip -d $1
	tar -xvf $1
}
