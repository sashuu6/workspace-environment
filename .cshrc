#####################################
# sashuu6's .cshrc file
# Created on: 08/05/2021 07:15:00
# Last modified: 11/06/2021 21:45:00
# Revision no: 4
# Machine: Apple Macbook Pro 15 (2018)
# Github Repository: https://github.com/sashuu6/workspace-environment
####################################

# Load prompt information
if ($?prompt) then
	# Command line prompt customisation
	set prompt="(%n@%m) %~ \n[%D/%W/%Y %T] (%l) (%h) -> "
endif

# Set os, osver and arch
if (-e /bin/uname) then
    set os = `/bin/uname -s`
	set osver = `/bin/uname -r`
	set arch = `/bin/uname -m`
else if (-e /usr/bin/uname) then
	set os = `/usr/bin/uname -s`
	set osver = `/usr/bin/uname -r`
	set arch = `/usr/bin/uname -m`
else
	set os = unknown
	set osver = unknown
	set arch = unknown
endif

# Set host
switch ($os)
case Linux:
	setenv HOST `/bin/hostname`
	breaksw
case default:
	if (-e /bin/hostname) then
		setenv HOST `/bin/hostname`
	else if (-e /usr/bin/hostname) then
		setenv HOST `/usr/bin/hostname`
	else if (-e /bin/uname) then
		setenv HOST `/bin/uname -n`
	else if (-e /usr/bin/uname) then
		setenv HOST `/usr/bin/uname -n`
	else
		setenv HOST "(unknown)"
	endif
	breaksw
endsw

# Load Aliases file
setenv USER_ALIASES_FILE $HOME/.aliases
if (-e $USER_ALIASES_FILE) then
	source $USER_ALIASES_FILE
else
	echo "No alises file to source"
endif
if ($arch =~ *86) then
	echo "Machine architecture is $arch (32-bit)"
else if ($arch =~ *64) then
	echo "Machine architecture is $arch (64-bit)"
else
	echo "Machine architecture is $arch"
endif
echo ""

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

# set default editor
setenv EDITOR "vim -u ${HOME}/.vimrc"
