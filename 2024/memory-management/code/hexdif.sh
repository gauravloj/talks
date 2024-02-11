# Given two hex addresses, calculate the difference between them
# and express it as a multiple of 4096 (the page size on x86_64).
# Usage: hexdif.sh 0x7f7f7f7f7f7f 0x7f7f7f7f7f7e
# Note: first address should be greater than the second address
diff=$((16#$1 - 16#$2))
echo "Page size for $diff = 4096 * $(( diff / 4096))"

