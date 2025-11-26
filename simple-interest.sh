#!/bin/bash
# Usage: ./simple-interest.sh PRINCIPAL RATE TIME
if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

p=$1
r=$2
t=$3

# support decimals using bc
si=$(echo "scale=2; $p * $r * $t / 100" | bc)
echo "Simple Interest = $si"
