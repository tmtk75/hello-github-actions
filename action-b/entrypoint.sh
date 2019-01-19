#!/bin/sh -l
echo "echo by ACTION2" > /github/workspace/action-b.log

cat /github/workflow/event.json
