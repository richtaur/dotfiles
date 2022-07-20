# Include my stinking key
ssh-add -K ~/.ssh/id_rsa

# Git
#alias gd='git difftool'

# Change directory to forefront Finder window folder
cdf() {
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}