#include <stdio.h>

int main(int argc, char** argv) {

    FILE* a2b = popen("./p2", "w");
//    FILE* b2a = popen("./p2", "r");

    int n = 7;

    fprintf(a2b, "%d\n", n);
    
    pclose(a2b);
//    pclose(b2a);

    return 0;
}
