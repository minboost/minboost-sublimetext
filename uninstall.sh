#!/bin/bash
 
# Sublime Text 2 Packages path
prefix='MINBOOST-'
st2pkgpath=$HOME'/Library/Application Support/Sublime Text 2/Packages'
snippetfolder=''

# check settings
if ! [ -d "$st2pkgpath" ]; then
    echo "Could not find Sublime Text 2 package directory: $st2pkgpath";
    exit;
fi

# input
echo -e "Which snippet folder would you like to uninstall?"
read snippetfolder

# validate
if [ "$snippetfolder" = "" ]
then
    echo "Please provide a snippet folder name."
    exit;
fi

# check for snippet folder
if ! [ -d "$st2pkgpath/$prefix$snippetfolder" ]; then
    echo "Snippet folder was not installed."
    exit;
fi

# remove the files
rm -rf "$st2pkgpath/$prefix$snippetfolder"

# done
echo "Uninstall complete."