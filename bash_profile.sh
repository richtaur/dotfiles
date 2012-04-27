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

ogg() {
	vlc -I dummy $1 --sout="#transcode{scale=1,acodec=vorbis,ab=192,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$2}" vlc://quit
}

lostcast() {
	scp $1 lostdecadegames@media.lostdecadegames.com:/home/lostdecadegames/media.lostdecadegames.com/lostcast/
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
alias dev='cd ~/dev'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias manor='cd ~/dev/lost_decade/manor; jekyll'
alias p='cd ~/dev/projects'

# Git
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gcm='git commit -m'
alias gd='git difftool'
alias gitsubup='git submodule update --init'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative -n 8'
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
export PATH='/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include'
export PATH="${HOME}/dev/lost_decade/djinn/tools/bin:${PATH}"

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

untargz() {
	gzip -d $1
	tar -xvf $1
}
