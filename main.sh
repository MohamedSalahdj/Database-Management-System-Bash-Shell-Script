#!/usr/bin/bash
#This is the main script of my bash project
while true;
	do
	echo
	select command in "CREATE DataBases" "LIST DataBases" "DROP DataBases" "CONNECT TO DataBases" "exit"
	do
		
		case $REPLY in
			1) echo -e "Creating database"
				source ./Scripts/1-creating_db_script
				;;
			2) echo -e "------------------- Listing Database -----------------------\n"
				if [[ -d ./DataBases ]];then
					ls ./DataBases
					echo -e "-------------------------------------------------------\n"
				else
					echo -e "There is No databases created Press 1 to create the first :) :) :)\n"
				fi
				;;
			3) echo -e "Dropping a database"
				source ./Scripts/2-deleting_db_script
				;;
			4) echo -e "Connect to database"
				 ./Scripts/table_menu.sh
				;;
			5) echo  "Bye"
				exit
				;;
			*) echo -e "Command not found"
				;;
		esac
		break
	done
done
