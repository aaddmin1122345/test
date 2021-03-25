#!bin/bash
#本地局域网扫描存活主机,使用linux ping命令
for i in $(seq 1 20)
do
ping -c 1 192.168.1.$i>/dev/null
echo '扫描中'
done
echo
if [ $? -eq 0 ];then
echo "192.168.1.$i 存活">/dev/null;touch ~/局域网存活主机扫描.txt;echo "192.168.59.$i 存活">~/局域网存活主机扫描.txt
else
echo "192.168.1.$i 失败!!!!">/dev/null;echo "192.168.59.$i 不存活">~/局域网存活主机扫描.txt
fi

