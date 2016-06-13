#!/bin/bash
file="notupdate"
if [ -f "$file" ]
then
    echo "$file found."
else
    echo "$file not found."
fi
