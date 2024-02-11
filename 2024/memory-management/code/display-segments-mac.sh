function executesize() {
    echo "\n Size details for $1: "
    echo "Running : size -m $1 -----"
    size -m $1
    echo "----- Done -----"
}

for file in text.o bss.o data1.o data2.o; do
  executesize $file
done

echo "\n-----  Displaying segment content -----"

echo "\n-----  Display Text segment content -----"
echo "Running : otool -s __TEXT __text -v text.o   -----"
otool -s __TEXT __text -v text.o   
echo "\n----- Done -----\n"


echo "\n-----  Display BSS segment content -----"
echo "Running : otool -s __DATA __common bss.o -----"
otool -s __DATA __common bss.o 
echo "----- Done -----"


echo "\n-----  Display data segment for data 1 -----"
echo "Running : otool -s __DATA __data data1.o   -----"
otool -s __DATA __data data1.o   
echo "----- Done -----"

echo "\n-----  Display data segment for data 2 -----"
echo "Running : otool -d data2.o   -----"
otool -d data2.o   
echo "----- Done -----"


