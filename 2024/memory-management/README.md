# Memory Management

This presentation talks about how the Virtual memory of a process is structured and 
how the actual memory allocation happens in the RAM.

-> This presentation is made in the format to present as a terminal slideshow using [lookatme](https://github.com/gauravloj/lookatme)
   originally forked from [d0c-s4vage/lookatme](https://github.com/d0c-s4vage/lookatme)

## Forum
Presented in `Vancouver Linux User group`

## Presentation tool
I used the `lookatme` code directly to run the slides, but the original package can directly be installed using `pip install --upgrade lookatme`.
Run below command to start the presentation
`python -m lookatme -e file_loader presentation.md`

## Code description
Code folder contains following files

1. C files to demonstrate different concepts like stack, heap, text segment, data segment, bss segment, caching, buffer overflow.
1. `display-segments-*.sh`: display size and contents of different segments for mac and linux.
1. `compile.sh` : compiles all the c files with relevant flags and output file names
1. `hexdif.sh` : prints the difference of two hex addresses given as arguments, and prints the number of pages
1. `singleval.sh`: It also prints the same information but the argument is in range format. Useful with the output of `cat /proc/<pid>/maps`

## References
Most of the examples in this presentation are copied/inspired directly from below references:

1. [OS Memory management is inspired from 'Linux under the hood', Pearson](https://www.oreilly.com/library/view/linux-under-the/9780134663500/)
1. [Process Memory layout examples are from 'Extreme C', Packt Publishing](https://www.oreilly.com/library/view/extreme-c/9781789343625/)
1. [Hacking: The Art of Exploitation, 2nd Edition, No Starch Press](https://learning.oreilly.com/library/view/hacking-the-art/9781593271442/)

