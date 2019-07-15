#include <stdio.h>
#include <signal.h>

void nonono(int sig) {
    printf("No way!\n");
}

int main(int argc, char** argv) {
    signal(SIGINT, nonono);
    while(1);
    return 0;
}
