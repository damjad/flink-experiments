#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
#

java -cp $HOME/configs:$GENERATOR_HOME/target/morpheus-tests-data-generator-1.6-Migration.jar \
      org.apache.flink.morpheus.wordcount.kafka.CustomStringKafkaGenerator \
      $HOME/configs/vanilla-load-balance-skew-word-count.properties > $HOME/logs/gen-startup_1.log 2>&1 &
echo $!> $HOME/pids/gen-pid_1
