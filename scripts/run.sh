#!/bin/bash
echo "Deploying..."
export PATH=$PATH:/bin:/usr/local/bin
echo "Wining2..."
DISPLAY=localhost:0.0 ; export DISPLAY
wineconsole --backend=curses mb_warband_dedicated.exe -r Sample_Battle.txt
