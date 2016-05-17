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

PROG_SRC_MAIN="Main.java"
PROG_SRC_MOVINATOR="Movinator.java"
PROG_CLS_MAIN="Main.class"
PROG_CLS_MOVINATOR="Movinator.class"

PROG_ERR="/tmp/movinator_error"
PROG_NULL="/tmp/movinator_null"
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

if [ ! -f $PROG_CLS_MOVINATOR ] || [ "$CREATE_INFRASTRUCTURE" -eq "1" ]; then 
	
	rm $PROG_CLS_MOVINATOR 2> $PROG_NULL
	javac $PROG_SRC_MOVINATOR 2> $PROG_ERR
	
	if [ ! -f $PROG_CLS_MOVINATOR ]; then
		echo " * \033[;31mERROR\033[0m : Unable to create $PROG_CLS_MOVINATOR"
		cat $PROG_ERR
		rm -f $PROG_ERR
		exit
	fi 
	
	echo " * \033[;32mOK\033[0m : File $PROG_CLS_MOVINATOR created"
	sleep 1
fi

if [ ! -f $PROG_CLS_MAIN ] || [ "$CREATE_INFRASTRUCTURE" -eq "1" ]; then 
	
	rm $PROG_CLS_MAIN 2> $PROG_NULL
	javac $PROG_SRC_MAIN 2> $PROG_ERR
	
	if [ ! -f $PROG_CLS_MAIN ]; then 
		echo " * \033[;31mERROR\033[0m : Unable to create $PROG_CLS_MAIN"
		cat $PROG_ERR
		rm -f $PROG_ERR
		exit
	fi
	
	echo " * \033[;32mOK\033[0m : File $PROG_CLS_MAIN created"
	sleep 1
fi

# Source Program not exist
if [ ! -f $PROG_SRC_MAIN ]; then
	echo " * \033[;31mERROR\033[0m : Unable to locate $PROG_SRC_MAIN"
	exit
fi

if [ ! -f $PROG_SRC_MOVINATOR ]; then
	echo " * \033[;31mERROR\033[0m : Unable to locate $PROG_SRC_MOVINATOR"
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
