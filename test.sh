#!/bin/bash

myhome='/var/www'
uploads='/web/app/uploads'

myscript=$myhome'/zimageoptimizer'
mytmp=$myscript'/tmp'
logs=$myscript'/logs'
markername='uploadsmarker'









while read SITE;
do
excl=$myhome/$SITE$uploads'/wc-logs',$myhome/$SITE$uploads'/cache'
echo '-----start----' $(date +"%y-%m-%d %T") >> $logs/$SITE.marker.log;
bash zImageOptimizer.sh -q --path=$myhome/$SITE$uploads -e $excl -n -m $myscript/$markername/$SITE.marker -tmp $mytmp >> $logs/$SITE.marker.log;
echo '-----finish----' $(date +"%y-%m-%d %T") >> $logs/$SITE.marker.log;

done < sitelist.txt

