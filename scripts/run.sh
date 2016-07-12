#!/bin/bash
echo "Deploying..."
export PATH=$PATH:/bin:/usr/local/bin
echo "Wining..."
screen -S Warband wineconsole --backend=curses mb_warband_dedicated.exe -r Sample_Battle.txt