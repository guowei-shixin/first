#!/bin/bash
#切文件,第二个参数是行,如果不写默认10000
if  test -z $2
then
   split=10000
else
    split=$2
     fi
file=$1  
len=`wc -l $file |awk '{print $1}'`
for((i=$split;i<=$len;i=i+$split));  
do
head -$i $file |tail -$split >$i.csv
done  
echo $i
