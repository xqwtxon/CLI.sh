#!/bin/env bash

# Export your command easily!

time="$(date +%r)"
process(){
	file="$1"
        copy_to_path "$file"
	sleep 5s
	make_executable "$file"
	sleep 5s
	echo "[$time] [Export Thread/SUCCESS]: Sucessfully processed the $file. Time: $time"
}


make_executable(){
	file="$1"
	chmod +x "$PATH/$file"
	echo "[$time] [Export Thread/INFO]: Sucessfully converted: $file to executable."
}

copy_to_path(){
	file="$1"
	cp "$file" "$PATH/$1"
	echo "[$time] [Export Thread/INFO]: Moved: $file to $PATH/$1!"
}

if [ "$1" == "" ]; then
	echo "[$time] [Export Thread/ERROR]: Please provide the file where going to process!"
	echo "[!] Exit Status: 1"
	exit 1
fi

if [ ! -e "$1" ]; then
	echo "[$time] [Export Thread/ERROR]: Sorry, that file: $1, is not found."
	echo "[!] Exit Status: 2"
	exit 2
fi
process "$1"

