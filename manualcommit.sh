#!/bin/bash
# manualcommit.sh
#auther dahuoyzs@gmail.com
#date 2020-7-22 16:18
#desc github 提交助手

#次数
count=1
#日期
date -s "2020-06-22 01:00:00"

for((i=1;i<=$count;i++));  
do   
echo `date +"%Y-%m-%d_%H:%M:%S"`>> README.md
git add README.md
git commit -m "by dahuoyzs autocommit program"
done  
#提交完成一次push
git push origin  master -f

#还原系统时间
timeJson=`curl http://quan.suning.com/getSysTime.do`
newTime=${timeJson:13:19}
date -s ${newTime:0:10}
date -s ${newTime:11:18}


