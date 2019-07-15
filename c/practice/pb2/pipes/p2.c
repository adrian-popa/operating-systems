#include <stdio.h>

int main(int argc, char** argv) {
    
    FILE* a2b = popen("./p1", "r");

    int n;

    fscanf(a2b, "%d\n", &n);

    printf("I have read: %d", n);

    pclose(a2b);

    return 0;
}
