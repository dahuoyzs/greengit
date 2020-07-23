#!/bin/bash
#author:bigfire
#time:2019-10-26

today=`date +"%Y-%m-%d"`
cd /opt/shell/autocommit/greengit/
iscommit=`cat config.txt|grep ${today}|awk '{print $2}'`
if [ $iscommit == 1 ] ;
then 
echo `date +"%Y-%m-%d_%H:%M:%S"`>> /opt/shell/autocommit/greengit/README.md
git add README.md
git commit -m "by bigfire autocommit program"
git push origin  master -f
fi

