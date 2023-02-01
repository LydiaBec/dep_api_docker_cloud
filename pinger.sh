#!/bin/bash

let onlineuser=0
let offlineuser=0
for i in 172.18.209.{1..255}
do
        ping -c 1 $i
        if [ $? = 0 ] ; then let "onlineuser=onlineuser+1"; echo $i >> online_host.txt;
        else  let "offlineuser= offlineuser+1" ; echo $i >> offline_host.txt;
        fi
done
echo "On a $onlineuser user en ligne et $offlineuser user hors ligne"
