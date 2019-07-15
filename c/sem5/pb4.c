#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <sys/time.h>

int n;

pthread_rwlock_t lock;

void* generateFn(void* p) {
    int k = rand();
    pthread_rwlock_wrlock(&lock);
    n = k;
    pthread_rwlock_unlock(&lock);

    return NULL;
}

void* checkFn(void *p) {
    pthread_rwlock_rdlock(&lock);
    printf("%d ", n % 2 == 1 ? 1 : 0);
    pthread_rwlock_unlock(&lock);
    
    return NULL;
}

int main(int argc, char** argv) {
    pthread_t t[60];
    int i;

    for (i = 0; i < 10; i++) {
        struct timeval time;
        gettimeofday(&time, NULL);

        srand((time.tv_sec * 1000) + (time.tv_usec / 1000));
 
        pthread_create(&t[i], NULL, generateFn, NULL);
    }

    for (i = 10; i < 60; i++) {
        pthread_create(&t[i], NULL, checkFn, NULL);
    }

    for (i = 0; i < 60; i++) {
        pthread_join(t[i], NULL);
    }

    printf("\n");

    return 0;
}
