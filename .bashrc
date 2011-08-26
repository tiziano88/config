# before changing read the comments at
# start of /usr/local/etc/default.cshrc

# set your default printer here
#setenv PRINTER ICTMono

# put your aliases here, e.g.
alias pd=pushd
alias ls="ls --color"


#export PS1="\[\e]2;\]\u@\H \t \w\a\[\e[37m\]\u@\H[\[\e[31m\]\w\[\e[37m\]]\[\e[0m\]\$"

export PS1="\n\[\e[32;1m\]==[\[\e[37;1m\]\u@\e[4m\H\e[m\[\e[32;1m\]]=[\[\e[37;1m\]jobs:\j\[\e[32;1m\]]=[\[\e[31;1m\]\w\[\e[32;1m\]]\n\[\e[32;1m\]==[\[\e[37;1m\]! \!\[\e[32;1m\]]==>\[\e[0m\]"

#export PS1="\n\[\e[30;1m\]\[\016\]l\[\017\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\j\[\e[30;1m\])-(\[\e[34;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]m\[\017\]-(\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])--> \[\e[0m\]"

shopt -s histappend

shopt -s checkwinsize

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export BOOST_HOME=/usr
export ROSE_HOME=~/OP2_ROSE_Fortran/ROSE/rose-0.9.5a-13219_inst
export JAVA_HOME=/usr/lib/jvm/java-6-sun

export LD_LIBRARY_PATH=$ROSE_HOME/lib:$JAVA_HOME/jre/lib/amd64/server:/usr

set -o vi
