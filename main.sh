#!/usr/bin/bash
#This is the main script of my bash project
select command in "CREATE DataBases" "LIST DataBases" "DROP DataBases" "CONNECT TO DataBases" "exit"
do
	case $REPLY in
		1) echo "Creating database"
			source ./scripts/1-creating_db_script
			;;
		2) echo "-------------------Listing Database-----------------------"
			if [[ -d ./DataBases ]];then
				ls ./DataBases
			else
				echo "There is No databases created Press 1 to create the first :) :) :)"
			fi
			;;
		3) echo "Dropping a database"
			source ./scripts/2-deleting_db_script
			;;
		4) echo "Connect to database"
			 ./scripts/table_menu.sh
			;;
		5) echo "Bye"
			exit
			;;
		*) echo "Command not found"
			;;
	esac
done
