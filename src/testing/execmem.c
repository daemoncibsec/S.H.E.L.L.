#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Uso: %s <codigo>\n", argv[0]);
        return 1;
    }

    size_t size = strlen(argv[1]);
    if (size == 0) return 1;

    void *mem = mmap(NULL, size,
                     PROT_READ | PROT_WRITE | PROT_EXEC,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (mem == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    memcpy(mem, argv[1], size);
    ((void (*)(void))mem)();
    munmap(mem, size);
    return 0;
}

