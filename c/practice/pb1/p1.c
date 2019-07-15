#include <stdio.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>

struct data {
    char string[101];
    int vowels;
    int done;
};

int main(int argc, char** argv) {
    int shm;
    struct data* p;

    shm = shmget(1234, sizeof(struct data), IPC_CREAT | 0600);
    p = shmat(shm, 0, 0);

    printf("Give a string of characters: ");
    fgets(p->string, 100, stdin);
    
    p->done = 0;

    while(!p->done) { }

    printf("Number of vowels in the string: %d\n", p->vowels);

    shmdt(p);
    shmctl(shm, IPC_RMID, 0);

    return 0;
}
