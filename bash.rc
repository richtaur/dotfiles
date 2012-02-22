###############################################################################
# Sources
###############################################################################

source /usr/local/etc/bash_completion.d/git-completion.bash

###############################################################################
# Aliases
###############################################################################

alias '.l'='..; l'
alias c='clear'
alias flushdns='dscacheutil -flushcache'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias l='ls -lah'
alias rc='/usr/bin/vim ~/.bash_profile; source $_'
alias vimrc='vim ~/.vimrc'

# Navigation
alias '..'='cd ..'
alias 'cd-'='cd -'
alias 'cd..'='cd ..'
alias dev='cd ~/dev'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias p='cd ~/dev/projects'

# Git
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gcm='git commit -m'
alias gd='git diff'
alias gitsubup='git submodule update --init'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative -n 8'
alias gpullm='git pull origin master'
alias gpushm='git push origin master'
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
