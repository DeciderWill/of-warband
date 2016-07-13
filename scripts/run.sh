#!/bin/bash
echo "Deploying..."


export PATH=$PATH:/bin:/usr/local/bin
#screen -S Warband -d -m
#screen -r Warband -X stuff "wineconsole --backend=curses mb_warband_dedicated.exe -r Sample_Battle.txt"
#screen -r Warband -X eval "stuff \015"


wineconsole --backend=curses mb_warband_dedicated.exe -r Sample_Battle.txt
echo "Started"