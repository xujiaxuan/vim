#!/bin/bash
echo "find ./ -name $1|xargs grep --color -i -Rs $2" |bash
