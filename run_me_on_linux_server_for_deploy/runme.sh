#!/bin/bash
# 

echo
echo "*** Server Script: $0 $1 ***"

## Y: if [ $# -ne 1 ]; then
if [ -z $1 ]; then
   echo "  * Missing Port# for First Argument"
   exit
elif [ $1 -eq 8080 ]; then
   echo "  * Invalid Port#: $1 Since Reserved"
   exit
else
   echo "  * Valid Port#: $1"
   echo "  * Date-Time Stamp: $(date +%F_%T)"
fi

echo
echo "*** Before"
echo
echo "  * 'Forever' Processes"
echo
forever list
echo
echo "  * 'Node' Processes"
echo
ps -aux | grep "node" | grep $1

echo
echo "*** Start Server"

#[jwc]Y nohup http-server . -p 8082 &
#Y forever start -al /root/03c-Deploy/Port-8082--VueJs-Coopera-AndresMartano/client/dist/forever.log -c http-server . -p 8082
# * IMPORTANT: No spaces around '=' or will be interpreted as conditional-logic
#Y command="forever start -al /root/03c-Deploy/Port-8082--VueJs-Coopera-AndresMartano/client/dist/forever.log -c http-server . -p $1"
command="forever start -al $PWD/forever.log -c http-server . -p $1"
echo "  * command: $command"
echo
$command

#Y echo "command: $temp"
#Y temp="cat $2"
#Y echo "\$temp: $temp"
#Y $temp


# Sleep Delay to allow time for processess to be instantiated
sleep 1s

echo
echo "*** After"

echo "  * Terminate 'forever' process before terminiating 'node' process"
echo "  * Otherwise, another 'node' process will be re-instantiated"
echo
echo "  * 'Forever' Processes"
echo
forever list
echo
echo "  * 'Node' Processes"
echo
ps -aux | grep "node" | grep $1
echo
