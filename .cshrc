#####################################
# sashuu6's .cshrc file
# Created on: 08/05/2021 07:15:00
# Last modified: 08/05/2021 07:15:00
# Revision no: 1
# Machine: Macbook Pro 15 (2018)
# Github Repository: 
####################################


if ($?prompt) then
	# Notify job completion
	set notify

	# history - store last 50 commands
	set history = 50

	# Count number of commands run in session
	setenv command_count 0

	# Command line prompt customisation
	# set prompt = "`date +'[%d/%m/%Y %T]'` [$USER@`hostname` - `pwd`]: "
	set prompt="(%l) (%h) [%D/%W/%Y %T] (%n@%m) %/ > "
endif

# Set default permission
umask 022

# Default editor
setenv EDITOR /usr/bin/vim
