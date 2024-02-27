echo "\n\nRunning 'xxd' on 'text.o' file\n\n"
xxd text.o

echo "\n\nRunning 'file' on 'text.o' file\n\n"
file text.o

echo "\n\nCopy 10 bytes from 'text.o' to 'testexe' file\n\n"
dd if=./text.o of=./testexe bs=10 count=1


echo "\n\nRunning 'xxd' on 'testexe' file\n\n"
xxd testexe

echo "\n\nRunning 'file' on 'testexe' file\n\n"
file testexe
