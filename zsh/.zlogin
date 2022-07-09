# Exit if os is unknown
if [[ ! $?os ]]
then
    echo ".login: Operating system is unknown\! Exiting..."
    exit 1
fi

# Greetings
echo ""
echo -n "Date and Time (Today):"; date
echo ""
echo "Operating System (OS): $os $osver"
echo ""
echo "Default Path: ($path)"
echo ""
if [[ $?TERM ]]
then
    echo 'Terminal Type: "'$TERM'"'
fi

if [[ -e $HOME/.editor ]]
then
    EDITOR=`cat $HOME/.editor`
else
    EDITOR=vim
fi

echo ""
echo "Available Aliases:-"
for ali in `cat $USER_ALIASES_FILE | awk '{print $2}' | awk -F'=' '{print $1}'`
do
    which $ali
done

echo ""