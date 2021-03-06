#####################################
# sashuu6's .login file
# Created on: 08/05/2021 10:33:00
# Modified on: 19/05/2022 22:55:00
# Revision no: 1
# Machine: Macbook Pro 15 (2018)
# Github Repository: https://github.com/sashuu6/workspace-environment
####################################

# Exit if os is unknown
if (! $?os) then
    echo ".login: Operating system is unknown\! Exiting..."
    exit 1
endif

# Greetings
echo ""
echo -n "Date and Time (Today):"; date
echo ""
echo "Operating System (OS): $os $osver"
echo ""
echo "Default Path: ($path)"
echo ""
if ($?TERM) then
    echo 'Terminal Type: "'$TERM'"'

if (-e $HOME/.editor) then
    setenv EDITOR `cat $HOME/.editor`
else
    setenv EDITOR vim
endif

echo ""
echo "Available Aliases:-"
foreach ali (`cat $USER_ALIASES_FILE | awk '{print $2}'`)
which $ali
end

echo ""