#include <stdio.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>
#include <string.h>

struct data {
    char string[101];
    int vowels;
    int done;
};

int main(int argc, char** argv) {
    int shm, i;
    struct data* p;

    shm = shmget(1234, 0, 0);
    p = shmat(shm, 0, 0);

    p->vowels = 0;

    char vowelsDict[] = "aeiouAEIOU";

    for (i = 0; i < strlen(p->string); i++) {
        if (strchr(vowelsDict, p->string[i]) != 0) {
            p->vowels++;
        }
    }

    p->done = 1;

    shmdt(p);

    return 0;
}
