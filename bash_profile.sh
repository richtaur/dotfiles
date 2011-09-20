###############################################################################
# Aliases
###############################################################################

alias '.l'='..; l'
alias c='clear'
alias flushdns='dscacheutil -flushcache'
alias gvimrc='vim ~/.gvimrc'
alias hasinternet='ping google.com'
alias hosts='sudo vim /etc/hosts'
alias ip='ifconfig | grep 192'
alias l='ls -lah'
alias lakitu='ssh richtaur@74.207.252.123'
alias osx='vim ~/dev/projects/dotfiles/osx_setup.md'
alias rc='/usr/bin/vim ~/.bash_profile; source $_'
alias vimrc='vim ~/.vimrc'

# Navivation
alias '..'='cd ..'
alias 'cd-'='cd -'
alias 'cd..'='cd ..'
alias dev='cd ~/dev'
alias p='cd ~/dev/projects'

# Git
get_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
alias gcm='git commit -m'
alias gdiff='git diff'
alias glog='git log --pretty=format:"%Cred%h%Creset %Cblue%an%d%Creset %s %Cgreen(%cr)%Creset" --date=relative -n 8'
alias gs='git status'

# Applications
alias telog='tail -f /var/log/apache2/error_log'
alias top='top -o cpu'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# LDG
alias devgc='cd ~/dev/game_closure'
alias devldg='cd ~/dev/lost_decade'
alias ldg='cd ~/Dropbox/Lost\ Decade'
alias tls='tealeaf serve'

###############################################################################
# Global exports
###############################################################################

export CLICOLOR='1'
export COMPUTERNAME='Belmont'
export EDITOR='/usr/bin/vim'
export PATH='/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/include:/opt/local/apache2/include:/usr/local/include'
export PATH="${HOME}/dev/game_closure/dev_sdk/gc_env/bin:${PATH}"

# Set the command prompt, eg:
# [richtaur@Belmont:Lost Decade](master)> cd ..
export PS1="[\e[0;32m\]\u@${COMPUTERNAME}:\W\[\e[m\]]\[\e[1;32m\]\[\e[m\]\$(get_branch)> "

# Set iTerm's tab titles
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${COMPUTERNAME}: ${PWD/#$HOME/~}\007"'

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
	scp -r $1 richtaur@74.207.252.123:/home/richtaur/dev/projects/richtaur.com/misc/tmp/
	echo http://www.richtaur.com/misc/tmp/$1 | pbcopy
	echo "Done! Uploaded to http://www.richtaur.com/misc/tmp/$1 (it's in your copy buffer)."
}

untargz() {
	gzip -d $1
	tar -xvf $1
}

# Update dev_sdk ##############################################################

updatedev_sdk() {
	# Get latest ui-develop and update submodules
	git pull origin ui-develop
	git submodule update --init

	# Switch timestep to redraw branch and update
	cd lib/timestep
	git checkout redraw
	git pull origin redraw
	cd ../..

	# Install it!
	./dev_install.sh
}

threepop() {
	tealeaf deploy -o out.zip 0.0.1 --no-compress
	rm -rf ../tmp/*
	mv out.zip ../tmp/
	cd ../tmp
	unzip out.zip
	cd ../
	chmod -R 777 tmp
	cd threepop
}
