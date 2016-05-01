#!/bin/sh

if [ "$1" != "-i" ]; then
	echo "Usage: `basename $0` -i input_file [-o output_file] [-c]"
	exit 1
fi

CREATE_INFRASTRUCTURE=0

while getopts ":i: :c o:" opt; do
	case $opt in
		c)
			CREATE_INFRASTRUCTURE=1
			;;
		o)
			FILE_OUT=$OPTARG
			;;
			
		i)
			FILE_IN=$OPTARG
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires an argument." >&2
			exit 1
			;;
		*)
			echo "Usage: `basename $0` -i input_file [-o output_file] [-c]" >&2
			exit 1
			;;
	esac
done

clear

PROG_SRC="Main.java"
PROG_CLS="Main.class"
PROG_ERR="/tmp/movinator_error"
ASM_OUT="ass"

# ASCII art
echo "                                                                                ";
echo "                ___  ___           _             _                              ";
echo "                |  \/  |          (_)           | |                             ";
echo "                | .  . | _____   ___ _ __   __ _| |_ ___  _ __                  ";
echo "                | |\/| |/ _ \ \ / | | '_ \ / _\` | __/ _ \| '__|                ";
echo "                | |  | | (_) \ V /| | | | | (_| | || (_) | |                    ";
echo "                \_|  |_/\___/ \_/ |_|_| |_|\__,_|\__\___/|_|                    ";
echo "                                                                                ";
echo "                                                                                ";



#Check structure
echo -n "Checking Movinator structure."

sleep 1
echo -n "."

sleep 1
echo "."


# Input file controls
if [ ! -f $FILE_IN ]; then
	echo " * \033[;31mERROR\033[0m : File '$FILE_IN' not exist"
	exit
else
	gcc -x assembler -m32 -nostdlib $FILE_IN -o $ASM_OUT 2> $PROG_ERR
	
	if [ ! -f $ASM_OUT ]; then
		echo " * \033[;31mERROR\033[0m : File '$FILE_IN' has incorrected syntax"
		cat $PROG_ERR
		rm -f $PROG_ERR
		exit
	else
		echo " * \033[;32mOK\033[0m : File '$FILE_IN' has corrected syntax"
		rm -f $ASM_OUT
	fi
fi

if [ ! -f $PROG_CLS ] || [ "$CREATE_INFRASTRUCTURE"=="1" ]; then 

	javac Main.java 2> $PROG_ERR
	
	if [ -f $PROG_CLS ]; then 
		echo " * \033[;32mOK\033[0m : File $PROG_CLS created"
		sleep 1
	else
		echo " * \033[;31mERROR\033[0m : Unable to create $PROG_CLS"
		cat $PROG_ERR
		rm -f $PROG_ERR
		exit
	fi
fi

# Source Program not exist
if [ ! -f $PROG_SRC ]; then
	echo " * \033[;31mERROR\033[0m : Unable to locate $PROG_SRC"
	exit
fi

# Output file controls
if [ ! -f $2 ]; then
	touch $2
	echo " * \033[;32mOK\033[0m : File '$2' has been created"
fi

echo " * \033[;32mOK\033[0m : Check complete\n"
sleep 1

if [ ! -f $FILE_OUT ]; then 
	java Main $FILE_IN
else
	java Main $FILE_IN $FILE_OUT
fi
