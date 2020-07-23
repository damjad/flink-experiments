#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
pdsh -w cloud-[13-14] 'rm -rf /data/*/peel/zooker-danish/words*'
pdsh -w cloud-12 'rm -rf /data/peel/tmp/danish/version-2'