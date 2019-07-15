#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

typedef struct Pair {
    char* a;
    char* b;
} Pair;

int evenCnt = 0;
int oddCnt = 0;
int negativeCnt = 0;

pthread_mutex_t evenMtx, oddMtx, negativeMtx;

void* thrFn(void* pair) {
    Pair* temp = (Pair*)pair;
    
    int a = atoi(temp->a);
    int b = atoi(temp->b);

    printf("a=%d, b=%d\n", a, b);

    if (a < 0 || b < 0) {
        pthread_mutex_lock(&negativeMtx);
        negativeCnt++;
        pthread_mutex_unlock(&negativeMtx);
    } else if ((a + b) % 2 == 0) {
        pthread_mutex_lock(&evenMtx);
        evenCnt++;
        pthread_mutex_unlock(&evenMtx);
    } else if ((a + b) % 2 == 1) {
        pthread_mutex_lock(&oddMtx);
        oddCnt++;
        pthread_mutex_unlock(&oddMtx);
    }

    return NULL;
}

int main(int argc, char** argv) {
    pthread_t t[argc / 2];
    Pair pairs[argc / 2];
    int i, j = 1;
    
    for (i = 1; i <= argc / 2; i++) {
        pairs[i - 1].a = argv[j++];
        pairs[i - 1].b = argv[j++];
        pthread_create(&t[i - 1], NULL, thrFn, (void*)&pairs[i - 1]);
    }

    for (i = 1; i <= argc / 2; i++) {
        pthread_join(t[i - 1], NULL);
    }

    pthread_mutex_destroy(&evenMtx);
    pthread_mutex_destroy(&oddMtx);
    pthread_mutex_destroy(&negativeMtx);

    printf("evenCnt: %d\n", evenCnt);
    printf("oddCnt: %d\n", oddCnt);
    printf("negativeCnt: %d\n", negativeCnt);
    
    return 0;
}
