#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
#
java -cp $MORPHEUS_HOME/src/main/conf:$MORPHEUS_HOME/target/morpheus-tests-1.6-Migration.jar \
      org.apache.flink.morpheus.wordcount.kafka.CustomStringKafkaGenerator \
      $HOME/configs/load-balance-skew-word-count.properties > $HOME/logs/gen-startup.log 2>&1 &
echo $!> $HOME/pids/gen-pid
