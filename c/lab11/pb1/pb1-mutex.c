#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

pthread_mutex_t mtx;

void* generateFn(void* vp) {
	int i = 0;
	while (i < 10) {
		pthread_mutex_lock(&mtx);
		int* np = (int*)vp;
		*np = rand() % 9000 + 1000;
		printf("#%d - generateFn:: generated: %d\n", i, *np);
		pthread_mutex_unlock(&mtx);
		usleep(1000000);
		i++;
	}
	return NULL;
}

void* printFn(void* vp) {
	int i = 0;
	while (i < 20) {
		pthread_mutex_lock(&mtx);
		int* np = (int*)vp;
		printf("#%d - printFn:: received: %d\n", i, *np);
		pthread_mutex_unlock(&mtx);
		usleep(500000);
		i++;
	}
	return NULL;
}

int main(int argc, char** argv) {
	srand(time(NULL));

	pthread_t t[7];
	int n, i;

	pthread_mutex_init(&mtx, NULL);
	
	for (i = 0; i < 3; i++) {
		pthread_create(&t[i], NULL, generateFn, (void*)&n);
	}

	for (i = 3; i < 7; i++) {
		pthread_create(&t[i], NULL, printFn, (void*)&n);
	}

	for (i = 0; i < 7; i++) {
		pthread_join(t[i], NULL);
	}
	
	pthread_mutex_destroy(&mtx);

	return 0;
}
