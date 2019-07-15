#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

/* Sa se scrie un program care citeste o propozitie de la tastatura si un numar natural (n) mai mic sau egal cu 10. Programul va creea un thread care o data la 2 secunde va genera (aleator/random) un numar intre 0 si lungimea textului existent la acel moment. Programul va creea inca (n) thread-uri. Fiecare thread va elimina (prin deplasare la stanga) din propozitie litera de pe pozitia identificata de numarul generat in acel moment dupa care vor astepta generarea unui nou numar. Dupa fiecare modificare a propozitiei, threadul care a efectuat modificarea va afisa textul care a mai ramas. Generarea unui nou numar se va face doar atunci cand asupra textului nu au loc modificari din alt thread. */

char s[100];
int rndNumberGenerated = 0;

pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;

void* generateRndFn(void* p) {
    while (strlen(s) > 0) {
        pthread_mutex_lock(&mtx);
        if (strlen(s) > 0) {
            int* np = (int*)p;
            *np = rand() % strlen(s);
            printf("generateRndFn:: generated %d\n", *np);
            rndNumberGenerated = 1;
        }
        pthread_mutex_unlock(&mtx);
        sleep(2);
    }
    return NULL;
}

void* eliminateCharFn(void* p) {
    while (strlen(s) > 0) {
        if (rndNumberGenerated == 1) {  
            pthread_mutex_lock(&mtx);
            int rmvIndex = *(int*)p;
            while (rmvIndex > 0 && rmvIndex >= strlen(s)) {
                rmvIndex--;
            }
            memmove(&s[rmvIndex], &s[rmvIndex + 1], strlen(s) - rmvIndex);
            printf("eliminateCharFn:: removed char from position %d\n", rmvIndex);
            printf("eliminateCharFn:: new string: %s\n", s);
            rndNumberGenerated = 0;
            pthread_mutex_unlock(&mtx);
        }
    }
    return NULL;
}

int main(int argc, char** argv) {
    srand(time(NULL));
    
    printf("Enter a sentence: ");
    scanf("%[^\n]s", s);

    int n, rndNumber, i;

    do {
        printf("The number n (0 < n <= 10): ");
        scanf("%d", &n);
    } while (n < 1 || n > 10);

    pthread_t t[n + 1];

    pthread_create(&t[0], NULL, generateRndFn, &rndNumber);

    for (i = 1; i < n + 1; i++) {
        pthread_create(&t[i], NULL, eliminateCharFn, &rndNumber);
    }

    for (i = 0; i < n + 1; i++) {
        pthread_join(t[i], NULL);
    }

    pthread_mutex_destroy(&mtx);

    return 0;
}
