#!/bin/bash

# USAGE:
# Prints binary file in base 2

# REASON FOR EXISTENCE
# Needed to look at some binary data to parse it using bitshift operators, then validating individual bits, this made it easier than hexadecimal

if [ "$#" -ne 1 ]; then
    echo -e "bprint is used for printing binary file data in base 2\n"
    echo "Usage: $0 <file_path>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: '$1' is not a valid file."
    exit 2
fi

xxd -b -c 1 -g 0 "$1" | awk '{ print $2 }'
