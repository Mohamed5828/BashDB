#!/bin/bash

DB_ROOT="../mySchemas"

mkdir -p $DB_ROOT

main_menu() {
    echo "1- Create Schema"
    echo "2- List Schemas"
    echo "3- Connect To Schema"
    echo "4- Drop Schema"
    echo "5- Enter SQL mode"
    echo "6- Exit"
    read -p "Choose an option: " main_choice

    case $main_choice in
        1) read -p "Enter your schmema name: " schemaName
        ./createSchema.sh "$schemaName"
        ;;
        2) ./listSchemas.sh ;;
        3) ./selectSchema.sh ;;
        4) ./deleteSchema.sh ;;
        5) ./sqlParse.sh ;;
        6) exit 0 ;;
        *) echo "Invalid option"; main_menu ;;
    esac
}
main_menu

