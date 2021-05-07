#!/bin/bash

n_runs=1

./rare_fail.sh > rare_fail_stdout.log 2> rare_fail_stderr.log

while [[ "$?" -ne 1 ]]; do
	(( n_runs++ ))
	./rare_fail.sh >> rare_fail_stdout.log 2>> rare_fail_stderr.log
done

echo "Script ran for $n_runs times before failing."
