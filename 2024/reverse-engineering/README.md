# Reverse Engineering Basics

First half of the presentation introduces the basics and need of reverse engineering.
Second half, works on solving some basic challenges from PicoCTF 2024.


-> This presentation is made in the format to present as a terminal slideshow using [lookatme](https://github.com/gauravloj/lookatme)
originally forked from [d0c-s4vage/lookatme](https://github.com/d0c-s4vage/lookatme)

## Forum

Presented in `DC604 - Vancouver Security Meetup`

## Presentation tool

I used the `lookatme` code directly to run the slides, but the original package can directly be installed using `pip install --upgrade lookatme`.
Run below command to start the presentation
`python -m lookatme presentation.md`

## Code description

Code folder contains following files

1. `calculator` c code to demonstrate the loss of information during different stages of development process.
1. `snake`: Challenge from PicoCTF to practice reversing intermediate code
1. `packer.out` : Challenge from PicoCTF to practice reversing using Static analysis tools
1. `run.out` : Challenge from PicoCTF to practice reversing using Dynamic analysis tools

## References

Main concept of information loss is inspired from pwn.college videos.

1. [Reverse Engineering - pwn.college](https://www.youtube.com/playlist?list=PL-ymxv0nOtqrGVyPIpJeostmi7zW5JS5l)
