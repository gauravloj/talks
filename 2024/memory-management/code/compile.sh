#!/usr/bin/env bash

gcc -c -o text.o ./01-text.c
gcc -c -o bss.o ./02-bss.c
gcc -c -o data1.o ./03-data-1.c
gcc -c -o data2.o ./04-data-2.c
gcc -g -o stackmap ./05-mapping-stack.c
gcc -g -o heapmap ./06-mapping-heap.c
gcc -g -o stack ./07-stack.c
gcc -g -o overflow ./08-stack-overflow.c
gcc -g -o heap ./09-heap.c
gcc -g -o segments ./10-memory_segments.c
gcc -g -o cache-code ./11-cache-friendly-code.c
gcc -g -o memoryeater -O0 ./12-memory-eater.c

