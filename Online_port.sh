
#!/bin/bash

online="online_host.txt"

for i in 192.168.65.{1..255}
do
ping -c 1 $i 
if [ $? -eq 0]; then
echo $i >> $online
fi
done 