#!/bin/bash
# diffchecker - Compare two strings from the command line

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: diffchecker \"string1\" \"string2\""
    exit 1
fi

# Compare the strings
diff <(echo "$1") <(echo "$2")
