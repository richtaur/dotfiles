###############################################################################
# Aliases
###############################################################################

alias '..'='cd ..'
alias bashrc='/usr/bin/vim ~/.bash_profile; source $_'
alias dev='cd ~/dev'
alias gvimrc='vim ~/.gvimrc'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias ip='ifconfig | grep 192'
alias ll='ls -lah'
alias p='cd ~/dev/projects'
alias playground='cd ~/dev/playground; vim index.html; cd -'
alias sshsh='ssh richter@209.20.66.182'
alias todo='vim ~/dev/TODO.md'
alias vimrc='vim ~/.vimrc'

# git
alias gc-m='git commit -m'
alias gcam='git commit -a -m'
alias gcat='~/dev/code/php/gcmftd/exec.php'
alias gdiff='git diff'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative'
alias gpom='git push origin master'
alias gpull='git pull origin master'
alias gpush='git push origin master'
alias gstat='git status'

# Applications
alias telog='tail -f /Applications/MAMP/logs/php_error.log'
alias top='top -o cpu'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias yui-min='java -jar ~/dev/code/java/yuicompressor-2.4.2/build/yuicompressor-2.4.2.jar'

# LDG
alias devandroid='cd ~/dev/sdk/android-sdk-mac_x86/tools'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias onslaught='cd ~/dev/lost_decade/onslaught'

###############################################################################
# Appearance
###############################################################################

PS1="[\e[0;32m\]\u:\W\[\e[m\]]\[\e[1;32m\]>\[\e[m\] "

###############################################################################
# Exports
###############################################################################

export CLICOLOR="1"
export EDITOR="/usr/bin/vim"
#export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include:/opt/android-sdk/tools:/opt/android-sdk/platforms/android-3/tools"
# This PATH includes depot_tools (for building Chromium)
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include:/opt/android-sdk/tools:/opt/android-sdk/platforms/android-3/tools:/Users/hackett/Downloads/home/chrome-svn/tarball/depot_tools"

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
# Raptr
###############################################################################

# svn co svn+ssh://mom.raptr.com/gxl/svn/repos/raptr/branches/phoenix/alpha_6

alias cassandra='/Users/hackett/dev/raptr/apache-cassandra-0.6.5/bin/cassandra -f'
alias qa='ssh root@qa.raptr.com'
alias raptr='cd ~/dev/raptr/raptrweb'

export GXL_INSTANCE_ROOT=/Users/hackett

cp-preview() {
	scp $1 root@heqa1:/gxl/preview/raptrweb/$1
	scp $1 root@heqa2:/gxl/preview/raptrweb/$1
}

cp-prd() {
	scp $1 root@heweb1:/gxl/prd/raptrweb/$1
	scp $1 root@heweb2:/gxl/prd/raptrweb/$1
	scp $1 root@xoweb3:/gxl/prd/raptrweb/$1
	scp $1 root@xoweb4:/gxl/prd/raptrweb/$1
}

raptrbranch() {
	svn co svn+ssh://mom.raptr.com/gxl/svn/repos/raptr/branches/raptrweb/$1
}
