#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

int n = 0;

pthread_cond_t cv;
pthread_mutex_t mtx;

void* incrementFn(void* p) {
	int i = 0;
	while (i < 10) {
		pthread_mutex_lock(&mtx);
		n++;
		printf("incrementFn:: n = %d\n", n);
		if (n == 20) {
			pthread_cond_signal(&cv);
		}		
		pthread_mutex_unlock(&mtx);
		i++;
		usleep(100000);
	}
	return NULL;
}

void* printFn(void* p) {
	pthread_mutex_lock(&mtx);
	while (n < 20) {
		pthread_cond_wait(&cv, &mtx);
	}
	printf("printFn:: Reached n = %d\n", n);
	pthread_mutex_unlock(&mtx);
	return NULL;
}

int main(int argc, char** argv) {
	pthread_t t[4];	
	int i;

	pthread_cond_init(&cv, NULL);
	pthread_mutex_init(&mtx, NULL);

	for (i = 0; i < 3; i++) {
		pthread_create(&t[i], NULL, incrementFn, NULL);
	}

	pthread_create(&t[3], NULL, printFn, NULL);

	for (i = 0; i < 4; i++) {
		pthread_join(t[i], NULL);
	}

	pthread_cond_destroy(&cv);
	pthread_mutex_destroy(&mtx);

	return 0;
}
