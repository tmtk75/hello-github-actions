#!/bin/sh -l

sh -c "echo $*"

echo "---- ls / ----"
ls /

echo "---- ls ----"
ls

echo "---- ls /github/workspace ----"
ls /github/workspace

echo "---- set ----"
set

echo "---- cat ----"
cat /github/workspace/action-b.log
