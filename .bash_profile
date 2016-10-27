# ~/.bash_profile

# used for bash login shells
# login shells include:
# * tty login sessions
# * ssh login sessions

# first, source user's .bashrc
if [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi

# uncomment this to add ~/bin to your path
#if [ -d ~/bin ]; then
#    export PATH=~/bin:${PATH}
#fi

# add your customizations below
