###############################################################################
# Aliases
###############################################################################

alias '..'='cd ..'
alias bashrc='/usr/bin/vim ~/.bash_profile; source $_'
alias gcam='git commit -a -m'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative'
alias gpom='git push origin master'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias httpconf='sudo vim /Applications/MAMP/conf/apache/httpd.conf'
alias ip='ifconfig | grep 192'
alias ll='ls -lah'
alias sshsh='ssh richter@209.20.66.182'

# Applications
alias telog='tail -f /Applications/MAMP/logs/php_error.log'
alias top='top -o cpu'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias yui-min='java -jar ~/dev/code/java/yuicompressor-2.4.2/build/yuicompressor-2.4.2.jar'

# LDG
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
# This PATH includes Java SDK 1.6
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include:/opt/android-sdk/tools:/opt/android-sdk/platforms/android-3/tools"

###############################################################################
# Macros
###############################################################################

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

alias code-review='~/svn/raptrweb/upload.py --reviewers=geoff@raptr.com --send_mail'
alias qa='ssh root@qa.raptr.com'

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

###############################################################################
# Archive
###############################################################################

#alias mxmlc='/Users/hackett/Documents/apps/Flex_SDK_3/bin/mxmlc'
#alias syn='synergyc -f --name Hackett-Mac 192.168.6.234'
#export PATH="$HOME/Documents/apps/soylatte16-1.0.3/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include:/usr/local/X11R6/include:$HOME/Documents/apps/android-sdk-mac_86/tools"
