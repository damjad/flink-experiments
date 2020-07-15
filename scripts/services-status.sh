#!/usr/bin/env bash
pdsh -w cloud-[11-21] 'ps -ef | grep -i flink-experiments'