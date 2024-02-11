# Desc: This script takes a single value as input and calculates the page count
# It is usefule with the output of `cat /proc/pid/maps` where the address range is given
# as a single value with a hyphen in between
# Usage: singleval.sh 7f7f7f7f0000-7f7f7f7f1000
# Output: 
# Operand 1: 7f7f7f7f0000
# Operand 2: 7f7f7f7f1000
# Decimal diff: 4096 = 4096 * 1
# Page count: 1

val=$1
op1=$(echo $val | cut -d'-' -f1)
op2=$(echo $val | cut -d'-' -f2)

echo "Operand 1: $op1"
echo "Operand 2: $op2"

hexdiff=$((16#$op2-16#$op1))
echo "Decimal diff: $((hexdiff)) = 4096 * $((hexdiff/4096))"
echo "Page count: $((hexdiff/4096))"

