#include <stdio.h>

int main(int argc, char** argv) {
    char name[64];

    while (scanf("%s", name) == 1) {
        printf("Hello %s\n", name);
    }
    return 0;
}
