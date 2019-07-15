#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

/* Sa se scrie un program care citeste de la tastatura un nume de director si un numar natural (n) mai mic sau egal cu 10. Programul va creea un thread care o data la 2 secunde va genera (aleator) o litera in intervalul 'a' - 'z'. Programul va creea de asemenea inca (n) thread-uri care vor primi ca si parametru numele directorului si unul din threaduri (aleator) va afisa doar acele fisiere care incep cu litera care este generata la acel moment. Generarea unei noi litere se va face doar atunci cand toate fisierele cu aceea litera au fost listate. */

char rndLetter;
int rndLetterGenerated = 0;

pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;

void* generateRndLetterFn(void* p) {
    while (1) {
        pthread_mutex_lock(&mtx);
        rndLetter = 'a' + rand() % ('z' - 'a' + 1);
        printf("generateRndLetterFn:: generated %c\n", rndLetter);
        rndLetterGenerated = 1;
        pthread_mutex_unlock(&mtx);
        sleep(2);
    }
    return NULL;
}

void* listFilesFn(void* p) {
    while (1) {
        pthread_mutex_lock(&mtx);
        if (rndLetterGenerated == 1) {
            char* dir = (char*)p;
            printf("listFilesFn:: listing files from %s starting with '%c'\n", dir, rndLetter);
            char findCmd[100] = "";
            sprintf(findCmd, "find %s -type f -name '%c*'", dir, rndLetter);
            FILE* p2find = popen(findCmd, "w");
            pclose(p2find);
            rndLetterGenerated = 0;
        }
        pthread_mutex_unlock(&mtx);
    }
    return NULL;
}

int main(int argc, char** argv) {
    srand(time(NULL));

    char dir[50];
    int n, i;

    printf("Directory name: ");
    scanf("%[^\n]s", dir);

    do {
        printf("The number n (1 <= n <= 10): ");
        scanf("%d", &n);
    } while (n < 1 || n > 10);

    pthread_t t[n + 1];

    pthread_create(&t[0], NULL, generateRndLetterFn, NULL);

    for (i = 1; i < n + 1; i++) {
        pthread_create(&t[i], NULL, listFilesFn, dir);
    }

    for (i = 0; i < n + 1; i++) {
        pthread_join(t[i], NULL);
    }

    pthread_mutex_destroy(&mtx);

    return 0;
}
