#!/bin/env bash

# Project Control Version
version="v1.0.0"


# This is an example of command line interface
# The specific file example can be found in: https://github.com/xqwtxon/cli/blob/main/cli.sh

# This example made by (xqwtxon), its under LGPL 2.1+ License
# You can redistrubute, or claim this project. Its under the license of LGPL other either newest version of license.

help(){
	echo "Welcome to Command Line Interface!"
        echo "You can this code examples on: https://github.com/xqwtxon/cli/blob/main/cli.sh"
        echo ""
        echo "--help, -h	Command List / Help Information."
	echo "--info, -i	Information about the software."
	echo "--version, -v	Version of Software."
	echo "--links, -l	Links and other information."
	echo ""
	echo "You try to execute cli --info about the software."
}

notfound(){
	wrong_command="$1"
	echo "The command parameter, $1 is not found. Try to use --help for commands."
}

info(){
	echo "Command Line Interface (version ${version}"
	echo ""
	echo "This program example will show how to make your own cli, easily with this template."
	echo "This is under LGPL 2.1 License by the Free Software. Feel free to redistrubute or claim this project."
	echo ""
	echo "Source Code: https://github.com/xqwtxon/cli"
	echo ""
	echo "@xqwtxon (xqwtxon@hotmail.com)"
	echo "Github: https://github.com/xqwtxon"
}

links(){
	echo "This is an example command."
}

version(){
	echo "Command Line Interface by xqwtxon (version ${version}"
}

check_args(){
    args="$1"
    if [ "$args" == "--help" ] || [ "$args" == "-h" ]; then
	help
	elif [ "$args" == "--info" ] || [ "$args" == "-i" ]; then
	info
	elif [ "$args" == "--version" ] || [ "$args" == "-v" ]; then
	version
	elif [ "$args" == "--links" ] || [ "$args" == "-l" ]; then
	links
	elif [ "$args" == "" ]; then
	help
	else notfound "$1"
    fi
}




check_args "$1"
