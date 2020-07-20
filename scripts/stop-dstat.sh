#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
HOST_NAME=`hostname`
kill `cat $HOME/pids/dstat-$HOST_NAME.pid`