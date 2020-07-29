#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
cd "`dirname $0`"

#start generator-remote and dstat at the same time.

bash start-generator-vanilla-remote.sh &
bash start-dstat-remote.sh &
