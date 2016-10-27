# ~/.bashrc

# used for bash non-login shells.
# non-login shells include:
# * X sessions (xdm, gdm, kdm)
# * X Terminals (xterm, konsole, gnome-terminal)
# * running remote commands via ssh

# NOTE: some programs (ie, winscp) fail if this generates any output.

# first, source the system bashrc
if [ -r /etc/bashrc ]; then
    . /etc/bashrc
fi

# MAIL is used by mutt
export MAIL=/mail/${USER}/Maildir/

# default printer: change this to suit your needs.
# pr3swd is the duplex queue on our black and white laser printer in the
# southwest quadrant of the 3rd floor of ICES.
export PRINTER=pr3swd

# default editor: this is used by svn, etc.
# the only safe default for EDITOR is one which instructs the user how to quit.
# most users will change this to vim or emacs.
export EDITOR=nano

# uncomment this to use a prompt which indicates exit status
#if [ -r /etc/bash/prompt ]; then
#    . /etc/bash/prompt
#fi

# pine aliases
alias alpine='alpine -passfile ~/.pinepass'
alias pine='alpine -passfile ~/.pinepass'

# add your customizations below
module load c7 intel/16.0 mpich2/3.1.4 hdf5/1.8.15-patch1 matlab/r2012b 
export NCDIR=/workspace/Library/netcdf-c-4.4.0
export GMTDIR=/workspace/Library/gmt-4.5.13
export LD_LIBRARY_PATH=${NCDIR}/lib:${LD_LIBRARY_PATH}
export INCLUDE=${NCDIR}/include:${INCLUDE}
export LD_LIBRARY_PATH=${GMTDIR}/lib:${LD_LIBRARY_PATH}
export INCLUDE=${GMTDIR}/include:${INCLUDE}
PATH=${NCDIR}/bin:${PATH}
PATH=${GMTDIR}/bin:${PATH}

if [ -f ~/.bash_alias_chen ]; then
. ~/.bash_alias_chen
fi

