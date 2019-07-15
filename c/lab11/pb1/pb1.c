#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

pthread_rwlock_t lock = PTHREAD_RWLOCK_INITIALIZER;

void* generateFn(void* vp) {
	int i = 0;
	while (i < 10) {
		pthread_rwlock_wrlock(&lock);
		int* np = (int*)vp;
		*np = rand() % 9000 + 1000;
		printf("#%d - generateFn:: generated: %d\n", i, *np);
		pthread_rwlock_unlock(&lock);
		i++;
		usleep(1000000);
	}
	return NULL;
}

void* printFn(void* vp) {
	int i = 0;
	while (i < 20) {
		pthread_rwlock_rdlock(&lock);
		int* np = (int*)vp;
		printf("#%d - printFn:: received: %d\n", i, *np);
		pthread_rwlock_unlock(&lock);
		i++;
		usleep(500000);
	}
	return NULL;
}

int main(int argc, char** argv) {
	srand(time(NULL));

	pthread_t t[7];
	int n, i;
	
	for (i = 0; i < 3; i++) {
		pthread_create(&t[i], NULL, generateFn, (void*)&n);
	}

	for (i = 3; i < 7; i++) {
		pthread_create(&t[i], NULL, printFn, (void*)&n);
	}

	for (i = 0; i < 7; i++) {
		pthread_join(t[i], NULL);
	}

	pthread_rwlock_destroy(&lock);

	return 0;
}
