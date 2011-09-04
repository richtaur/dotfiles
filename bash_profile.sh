###############################################################################
# Aliases
###############################################################################

alias osx='vim ~/dev/projects/dotfiles/osx_setup.md'
alias c='clear'
alias flushdns='dscacheutil -flushcache'
alias gvimrc='vim ~/.gvimrc'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias ip='ifconfig | grep 192'
alias l='ll'
alias lakitu='ssh root@74.207.252.123'
alias ll='ls -lah'
alias playground='cd ~/dev/playground; vim index.html'
alias rc='/usr/bin/vim ~/.bash_profile; source $_'
alias sshsh='ssh richter@209.20.66.182'
alias vimrc='vim ~/.vimrc'

# Navivation
alias '..'='cd ..'
alias 'cd-'='cd -'
alias 'cd..'='cd ..'
alias art='cd ~/dev/art'
alias js='cd ~/dev/code/js'
alias dev='cd ~/dev'
alias p='cd ~/dev/projects'

# Git
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gb='git branch'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gdiff='git diff'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative -n 8'
alias gpull="git pull origin $get_branch"
alias gpush="git push origin $get_branch"
alias gs='git status'

# Applications
alias telog='tail -f /var/log/apache2/error_log'
alias top='top -o cpu'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias yui-min='java -jar ~/dev/code/java/yuicompressor-2.4.2/build/yuicompressor-2.4.2.jar'

# LDG
alias devandroid='cd ~/dev/sdk/android-sdk-mac_x86/tools'
alias devgc='cd ~/dev/game_closure'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias tls='tealeaf serve'

###############################################################################
# Global exports
###############################################################################

export CLICOLOR='1'
export EDITOR='/usr/bin/vim'
export PATH='/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include'
export PATH="${HOME}/dev/game_closure/dev_sdk/gc_env/bin:${PATH}"

# Set the command prompt, eg:
# [richtaur:Lost Decade](master)> cd ..
export PS1="[\e[0;32m\]\u:\W\[\e[m\]]\[\e[1;32m\]\[\e[m\]\$(get_branch)> "

# Set iTerm's tab titles
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'

###############################################################################
# Macros
###############################################################################

cpfilename() {
	ls $1 | pbcopy
}

lameit() {
	lame -V 4 $1.wav
	mv $1.wav.mp3 $1.mp3
	rm $1.wav
}

lld() {
	ls -lah $1 | grep ^d
}

ogg() {
	vlc -I dummy $1 --sout="#transcode{scale=1,acodec=vorbis,ab=192,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$2}" vlc://quit
}

png() {
	ls -lh $1
	pngcrush -q $1 tmp.png
	mv tmp.png $1
	ls -lh $1
}

tmp() {
	scp -r $1 richter@richtaur.com:/home/www/richtaur.com/htdocs/misc/tmp/
	echo http://richtaur.com/misc/tmp/$1 | pbcopy
	echo http://richtaur.com/misc/tmp/$1
}

untargz() {
	gzip -d $1
	tar -xvf $1
}

###############################################################################
# Notes
###############################################################################

# svn co svn+ssh://mom.raptr.com/gxl/svn/repos/raptr/branches/phoenix/alpha_6
