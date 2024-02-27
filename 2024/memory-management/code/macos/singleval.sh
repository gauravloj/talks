val=$1
op1=$(echo $val | cut -d'-' -f1)
op2=$(echo $val | cut -d'-' -f2)

echo "Operand 1: $op1"
echo "Operand 2: $op2"

hexdiff=$((16#$op2-16#$op1))
echo "Decimal diff: $((hexdiff)) = 4096 * $((hexdiff/4096))"
echo "Page count: $((hexdiff/4096))"

