if [ -f "$HOME/.bashrc" ] ; then
   source $HOME/.bashrc
fi

# Set prompt here:
error() {
if [ $? -eq 0 ]; then
	echo ":)"
else
	echo ":("
fi
}
PS1='\[\e[1;31m\]$(error)\[\e[m\] \[\e[1;32m\]\h\[\e[m\]:\[\e[1;34m\]\W\[\e[m\] \$ '
