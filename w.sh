#!/bin/bash

function pause(){
  echo ""
  read -s -n 1 -p "Press any key to continue . . ."
  echo ""
}

PS3="
Select number and press Enter: "
SQLITEDBNAME=wekan.db

while true; do
  clear
  echo "WeKan Open Source Kanban"
  echo ""
  options=("New Board" "Edit" "Find" "One Board" "Count Boards etc" "Import Export Sync" "Settings" "About" "Quit")
  select opt in "${options[@]}"
    do
      case $opt in
        "New Board")
          clear
          echo "Creating new board..."
          pause
          break
          ;;
        "Edit")
          clear
          echo "Editing..."
          pause
          break
          ;;
        "Find")
          clear
          echo "Finding..."
          pause
          break
          ;;
        "One Board")
          clear
          echo "WeKan"
          echo "_____________________________________________________________________"
          echo " Board 1                                                             "
          echo " * Public Muted Filter             Rules Find Swimlanes Multi-Select "
          echo "_____________________________________________________________________"
          echo "                    Swimlane 1                                       "
          echo "_________ ________ _______ _______ __________________________________"
          echo " List 1    Todo     Doing   Done    [Add List]                       "
          echo "_________ ________ _______ _______ __________________________________"
          echo " Card 1    Some     But     Maybe                                    "
          echo "_________ ________ _______ _______ __________________________________"
          echo ""
          pause
          break
          ;;
        "Count Boards etc")
          clear
          echo "Counting..."
          echo ""
          echo -n "Boards: "
          BCOUNT=$(sqlite3 -quote ${SQLITEDBNAME} "SELECT COUNT(*) FROM boards;" | tr -d "'")
          echo $BCOUNT
          echo -n "Lists: "
          LCOUNT=$(sqlite3 -quote ${SQLITEDBNAME} "SELECT COUNT(*) FROM lists;" | tr -d "'")
          echo $LCOUNT
          echo -n "Swimlanes: "
          SCOUNT=$(sqlite3 -quote ${SQLITEDBNAME} "SELECT COUNT(*) FROM swimlanes;" | tr -d "'")
          echo $SCOUNT
          echo -n "Cards: "
          CCOUNT=$(sqlite3 -quote ${SQLITEDBNAME} "SELECT COUNT(*) FROM cards;" | tr -d "'")
          echo $CCOUNT
          pause
          break
          ;;
        "Import Export Sync")
          clear
          echo "Import Export Sync"
          echo
          echo "1) Import from previous JSON Export"
          echo "2) Import from Trello"
          echo "3) Import from CSV"
          echo "4) Export to JSON"
          echo "5) Export to CSV"
          echo "6) Export to Excel"
          echo "7) Export to HTML"
          pause
          break
          ;;
        "Settings")
          clear
          echo "Settings menu..."
          pause
          break
          ;;
        "About")
          clear
          echo "About WeKan..."
          pause
          break
          ;;
        "Quit")
          break 2
          ;;
        *)
          echo "invalid option"
          break
          ;;
    esac
  done
done
