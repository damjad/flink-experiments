#!/usr/bin/env bash
source "`dirname $0`/environment.sh"
kill `cat $HOME/pids/dstat-`hostname`.pid`