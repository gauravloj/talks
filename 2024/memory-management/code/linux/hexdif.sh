diff=$((16#$1 - 16#$2))
echo "$diff = 4096 * $(( diff / 4096))"

