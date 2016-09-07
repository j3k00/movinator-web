#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "Usage : scriptCompile : <file.asm>"
else
	nasm -f elf -F dwarf -g $1
	var=$(echo $1 | cut -d '.' -f 1)
	varCompile="${var}.o"
	ld -m elf_i386 -o $var $varCompile
fi
