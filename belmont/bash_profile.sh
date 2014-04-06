export COMPUTERNAME='Belmont'

# Set iTerm's tab titles
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${COMPUTERNAME}: ${PWD/#$HOME/~}\007"'

alias gvimrc='vim ~/.gvimrc'
alias ip='ifconfig | grep 192.168'
alias lakitu='ssh richtaur@74.207.252.123'
alias osrc='vim ~/dev/projects/dotfiles/belmont/osx_setup.md'
alias vim='mvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

ogg() {
	vlc -I dummy $1 --sout="#transcode{scale=1,acodec=vorbis,ab=192,channels=2,samplerate=44100}:std{access=file,mux=ogg,dst=$2}" vlc://quit
}

tmp() {
	scp -r $1 richtaur@74.207.252.123:/home/richtaur/dev/projects/richtaur.com/misc/tmp/
	echo http://www.richtaur.com/misc/tmp/$1 | pbcopy
	echo "Done! Uploaded to http://www.richtaur.com/misc/tmp/$1 (it's in your copy buffer)."
}
