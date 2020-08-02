#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
#

for (( c=100; c<=2300; c=c+25))
do
#./stop-generator-remote.sh && ./start-sustainable-vanilla-remote.sh && sleep 30 && \
sed -i 's/\(^source-rate=\).*/\1${c}/' $HOME/configs/vanilla-sustainable-throughput.properties
done
