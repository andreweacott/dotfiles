if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/local/bin" ] ; then
    PATH="/usr/local/bin:$PATH"
fi



alias ls="ls --color=tty"
alias wd="cd $HOME/dev/code/projects"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

