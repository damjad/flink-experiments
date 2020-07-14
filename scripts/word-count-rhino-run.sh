#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

$RHINO_HOME/build-target/bin/flink run -m $RHINO_ADDRESS \
    -c org.apache.flink.morpheus.wordcount.SkewWordCount \
    -q $MORPHEUS_HOME/target/morpheus-tests-1.6-Migration.jar \
    --properties-file $HOME/configs/load-balance-skew-word-count.properties