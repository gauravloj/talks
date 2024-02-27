#!/usr/bin/env bash

gcc -c -o text.o ./01-text.c
gcc -c -o bss.o ./02-bss.c
gcc -c -o data1.o ./03-data-1.c
gcc -c -o data2.o ./04-data-2.c
gcc -o stackmap ./05-mapping-stack.c
gcc -o heapmap ./06-mapping-heap.c
gcc -o stack ./07-stack.c
gcc -o overflow ./08-stack-overflow.c
gcc -o heap ./09-heap.c
gcc -o segments ./10-memory_segments.c
gcc -o cache-code ./11-cache-friendly-code.c
gcc -o memoryeater -O0 ./12-memory-eater.c

