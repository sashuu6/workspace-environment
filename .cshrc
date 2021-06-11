#####################################
# sashuu6's .cshrc file
# Created on: 08/05/2021 07:15:00
# Last modified: 11/06/2021 21:45:00
# Revision no: 4
# Machine: Apple Macbook Pro 15 (2018)
# Github Repository: https://github.com/sashuu6/workspace-environment
####################################

if ($?prompt) then
	# Command line prompt customisation
	set prompt="(%l) (%h) [%D/%W/%Y %T] (%n@%m) %~ > "
endif

# history
set histdup=prev
set history=(1000 "%h\t%T\t%R\n")
set savehist=(1000 merge)
history -M

# Set auto listing of folders
set autolist

# Set autoexpand on tab
set autoexpand

# Set no beep
set nobeep

# Set colours
set color
set colorcat

# Set autocorrect
set complete=enhance
set correct=cmd
set rmstar

# Set default permission
umask 022

# set ll support
alias ll 'ls -lG'

# Default editor
setenv EDITOR "vim -u ${HOME}/.vimrc"