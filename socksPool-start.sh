#!/bin/sh

cd /root
#rm validSocks.txt
#rm tmp.txt
#python3 socksChecker.py
# start cron
#/usr/sbin/crond -l 8
#cat tmp.txt > validSocks.txt && \
python3 socksPool.py
