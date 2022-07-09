# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Set os, osver and arch
if [[ -e /bin/uname ]]
then
    os=`/bin/uname -s`
	osver=`/bin/uname -r`
	arch=`/bin/uname -m`
elif [[ -e /usr/bin/uname ]]
then
	os=`/usr/bin/uname -s`
	osver=`/usr/bin/uname -r`
	arch=`/usr/bin/uname -m`
else
	os="unknown"
	osver="unknown"
	arch="unknown"
fi

# Set host
case $os in "Linux")
	HOST=`/bin/hostname`;;
*)
	if [[ -e /bin/hostname ]]
    then
		HOST=`/bin/hostname`
	elif [[ -e /usr/bin/hostname ]]
    then
		HOST=`/usr/bin/hostname`
	elif [[ -e /bin/uname ]]
    then
		HOST=`/bin/uname -n`
	elif [[ -e /usr/bin/uname ]]
    then
		HOST=`/usr/bin/uname -n`
	else
		HOST="(unknown)"
	fi
esac

# Load Aliases file
echo ""
USER_ALIASES_FILE=$HOME/.aliases
if [[ -e $USER_ALIASES_FILE ]]
then
    echo "User aliases file: Loaded $USER_ALIASES_FILE"
    source $USER_ALIASES_FILE
    echo ""
else
    echo "No aliases file to source"
fi

# Machine Arctitecture
if [[ $arch == *86 ]]
then
	echo "Machine architecture: $arch (32-bit)"
elif [[ $arch == *64 ]]
then
	echo "Machine architecture: $arch (64-bit)"
else
	echo "Machine architecture: $arch"
fi

# Set default permission
umask 022