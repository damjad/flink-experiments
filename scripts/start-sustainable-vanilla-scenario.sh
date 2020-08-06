#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
#

c=300
sed -i "s/\(^source-rate=\).*/\1$c/" $HOME/configs/vanilla-sustainable-throughput.properties
./stop-generator-remote.sh && sleep 0.5 && ./start-sustainable-vanilla-remote.sh && sleep 30


for (( c=1700; c<=2225; c=c+25))
do
sed -i "s/\(^source-rate=\).*/\1$c/" $HOME/configs/vanilla-sustainable-throughput.properties
./stop-generator-remote.sh && sleep 0.5 && ./start-sustainable-vanilla-remote.sh && sleep 20
done


for (( c=2250; c<=2300; c=c+25))
do
sed -i "s/\(^source-rate=\).*/\1$c/" $HOME/configs/vanilla-sustainable-throughput.properties
./stop-generator-remote.sh && ./start-sustainable-vanilla-remote.sh && sleep 50
done

c=2190
sed -i "s/\(^source-rate=\).*/\1$c/" $HOME/configs/vanilla-sustainable-throughput.properties
./stop-generator-remote.sh && sleep 10 && ./start-sustainable-vanilla-remote.sh && sleep 300 &&\
./stop-generator-remote.sh && ./word-count-vanilla-stop-with-savepoint.sh
