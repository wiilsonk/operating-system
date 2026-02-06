#!/bin/bash

echo "Top 5 memory hogs:"
ps aux --sort=-%mem | awk 'NR==1 || NR<=6 {print $11, $2, $4"%"}'
