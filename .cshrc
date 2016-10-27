# ~/.cshrc

# used for csh non-login shells.
# non-login shells include:
# * X sessions (xdm, gdm, kdm)
# * X Terminals (xterm, konsole, gnome-terminal)
# * running remote commands via ssh

# NOTE: some programs (ie, winscp) fail if this generates any output.

# NOTE: csh automatically sources /etc/csh.cshrc.  no need to source it here.

# MAIL is used by mutt
setenv MAIL /mail/${USER}/Maildir/

# this used to be uncommented but turned out to be extraneous
# when updating our modules package for the new centos distro
# file is now ices_modules.csh
# JRD 20150330
#source /etc/profile.d/modules.csh

# default printer: change this to suit your needs.
# pr3swd is the duplex queue on our black and white laser printer in the
# southwest quadrant of the 3rd floor of ICES.
setenv PRINTER pr3swd

# default editor: this is used by svn, etc.
# the only safe default for EDITOR is one which instructs the user how to quit.
# most users will change this to vim or emacs.
setenv EDITOR nano

# pine aliases
alias alpine 'alpine -passfile $HOME/.pinepass'
alias pine 'alpine -passfile $HOME/.pinepass'

# add your customizations below
