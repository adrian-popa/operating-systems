#include <stdio.h>
#include <pthread.h>

int count = 0;

pthread_t kid[1000];

pthread_mutex_t mtx;

void* inc(void* p) {
    int i;
    for (i = 0; i < 1000; i++) {
        pthread_mutex_lock(&mtx);
        int temp = count;
        temp++;
        count = temp;
        // count++; - equivalent (read, increment, write)
        pthread_mutex_unlock(&mtx);
    }
    return NULL;
}

int main(int argc, char** argv) {
    int i;

    pthread_mutex_init(&mtx, NULL);

    for (i = 0; i < 1000; i++) {
        pthread_create(&kid[i], NULL, inc, NULL);
    }

    for (i = 0; i < 1000; i++) {
        pthread_join(kid[i], NULL);
    }

    pthread_mutex_destroy(&mtx);

    printf("count: %d\n", count);

    return 0;
}
