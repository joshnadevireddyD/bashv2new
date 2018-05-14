#!/bin/bash
check_process()
{
echo "checking if process $1 exists  "
[ "$1" = "" ] && return 0
PROCESS_NUM=$(ps -ef | grep "$1" | grep -v "grep" | wc -l)
if [ $PROCESS_NUM -ge 1 ]; then 
return 1
else
return 0
fi
}
check_process mysql
CHECK_RET=$?
if [ $CHECK_RET -ne 0 ];
echo "process is running"$CHECK_RET

else
echo "process is not running"
fi
