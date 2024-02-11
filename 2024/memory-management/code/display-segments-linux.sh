function executesize() {
    echo -e "\n Size details for $1: "
    echo -e "Running : size $1 -----"
    size $1
    echo -e "----- Done -----"
}

function executecontent() {
    echo -e "\n-----   Display $1 segment for $2:  -----"
    echo -e "Running : objdump -S -j $1 $2 -----\n"
    objdump -S -j $1 $2
    echo -e "----- Done -----\n\n"
}

for file in text.o bss.o data1.o data2.o; do
  executesize $file
done

echo -e "\n-----  Displaying segment content -----"

executecontent .text text.o  # linux

executecontent .bss bss.o  # linux

executecontent .data data1.o  # linux

executecontent .data data2.o  # linux
