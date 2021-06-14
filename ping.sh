#!/bin/bash
PREFIX=194.145.63
UPHOSTS=/var/log/uphosts.`date+%m%d%Y`
DOWNHOSTS=/var/log/downhosts.`date+%m%d%Y`

for OCTET in `seq 1 255`
do
  echo -en "Pinginh ${PREFIX}.${OCTET}...."
  ping -c1 -w1 ${PREFIX}.${OCTET} > /dev/null 2>&1
if [ "$?" -eq "0" ];then
  echo "${PREFIX}.${OCTET}">>${UPHOSTS}
  echo "${PREFIX}.${OCTET}">>${DOWNHOSTS}
else
  echo " Failed"
fi
done
