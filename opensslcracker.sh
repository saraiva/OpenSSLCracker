#!/bin/bash
"
   ____                    _____  _____ _       _____                _             
  / __ \                  / ____|/ ____| |     / ____|              | |            
 | |  | |_ __   ___ _ __ | (___ | (___ | |    | |     _ __ __ _  ___| | _____ _ __ 
 | |  | |  _ \ / _ \  _ \ \___ \ \___ \| |    | |    |  __/ _  |/ __| |/ / _ \  __|
 | |__| | |_) |  __/ | | |____) |____) | |____| |____| | | (_| | (__|   <  __/ |   
  \____/| .__/ \___|_| |_|_____/|_____/|______|\_____|_|  \__,_|\___|_|\_\___|_|   
        | |                                                                        
        |_|                                                                        

By: Raphaeangelo
"

while read line
do
openssl aes-256-cbc -d -a -in $1 -pass pass:$line -out out.txt 2>out.txt >/dev/null && echo "===================================================" && cat out.txt && echo -en "\n\npassword is \E[033;32m$line\e[0m\n" && read -p "press return key to continue..." < /dev/tty; 

done < ./password.txt
