#!/bin/csh -f
echo "Environment Installer"
echo "Developed by Sashwat K"
echo "GitHub - https://github.com/sashuu6/workspace-environment"
echo "----------------------"
echo ""

echo "Checking for existing environment files..."
echo ""
set rootdir = `dirname $0`
set script_path = `cd $rootdir && pwd`
set backup_folder="~/.env_backup/`date +%Y%m%d_%H%M%S`"

echo "Creating backup folder at $backup_folder"
echo ""

mkdir -p $backup_folder
if (-e ~/.aliases) then
    mv ~/.aliases $backup_folder
endif
if (-e ~/.cshrc) then
    mv ~/.cshrc $backup_folder
endif
if (-e ~/.editor) then
    mv ~/.editor $backup_folder
endif
if (-e ~/.login) then
    mv ~/.login $backup_folder
endif
if (-e ~/.vimrc) then
    mv ~/.vimrc $backup_folder
endif

echo "Backup complete at $backup_folder"
echo ""

echo "Copying new files..."
echo ""
cp $script_path/.aliases $script_path/.cshrc $script_path/.editor $script_path/.login $script_path/.vimrc ~/

echo "Copying complete.."
echo ""
echo "Setup complete..."
echo ""
