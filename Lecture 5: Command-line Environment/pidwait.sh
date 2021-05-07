#!/usr/bin/env bash

pidwait () {
	# Wait until the process finishes
	while kill -0 $1 2>/dev/null; do
		sleep 1
	done
	# List current directory contents
	ls
}
