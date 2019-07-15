#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>

void* thrCapitalizeFn(void* sp) {
    char s[10];
    strcpy(s, (char*)sp);
    if ('a' <= s[0] && s[0] <= 'z') {
        s[0] = s[0] - 'a' + 'A';
    }
    printf("%s ", s);
    return NULL;
}

int main(int argc, char** argv) {
    pthread_t t[argc];
    int i;

    for (i = 1; i < argc; i++) {
        pthread_create(&t[i-1], NULL, thrCapitalizeFn, (void*)argv[i]);
    }

    for (i = 1; i < argc; i++) {
        pthread_join(t[i-1], NULL);
    }

    printf("\n");

    return 0;
}
