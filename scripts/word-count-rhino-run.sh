#!/usr/bin/env bash
source "`dirname $0`/environment.sh"

$RHINO_HOME/build-target/bin/flink run -d \
    -q $MORPHEUS_HOME/target/morpheus-tests-1.6-Migration.jar \
    --properties-file $HOME/configs/load-balance-skew-word-count.properties