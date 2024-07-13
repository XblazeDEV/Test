#!/bin/bash

echo "Welcome to test app!!!"
while true; do
    read -p "What do you want to do? " action

    if [[ "$action" == "help" ]]; then
        echo "1: Print a hello world message"
        echo "2: Get the username and hostname"
        echo "3: Exit"
    elif [[ "$action" == "1" ]]; then
        echo "Hello world!!!"
    elif [[ "$action" == "2" ]]: then
        echo "$USER@$(hostname)"
    elif [[ "$action" == "3" ]]; then
        exit 0
    else
        echo "Please put a valid input (type help for more info)"
done
