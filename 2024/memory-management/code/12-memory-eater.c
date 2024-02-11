#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main(int argc, char* argv[]) {
    int *p;
    unsigned long int total_size = 0;
    int to_allocate = 1024 * 1024;
    int multiplier = 1;
    
    if (argc == 2) {
      to_allocate *= atoi(argv[1]);
    }

    while(1) {
        p = malloc(to_allocate);
        if (p == NULL) {
            printf("Failed to allocate %d bytes\n", to_allocate);
            break;
        }
        total_size += to_allocate;
        if (total_size < 1024*1024*1024) {
            printf("Allocated %lu MB\n", total_size/(1024*1024));
        } else {
            printf("Allocated %lu GB\n", total_size/(1024*1024*1024));
        }
        sleep(1);
    }
    return 0;
}


