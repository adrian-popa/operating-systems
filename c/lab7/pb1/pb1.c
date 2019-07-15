#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

// The program will generate in the parent process a random number, pass it
// to a child using a pipe, the child doubles the number and returns it
// to the parent that prints it on the console.

int main(int argc, char** argv) {
	srand(time(NULL));
	int r = rand() % 1000 + 1;
	
	printf("Parent generated: %d\n", r);

	int p2c[2], c2p[2];
	pipe(p2c); pipe(c2p);

	if (fork() == 0) {
		close(p2c[1]); close(c2p[0]);
		read(p2c[0], &r, sizeof(int));
		r *= 2;
		close(p2c[0]);
		write(c2p[1], &r, sizeof(int));
		close(c2p[1]);
		exit(0);		
	}

	close(p2c[0]); close(p2c[1]); close(c2p[1]);
	read(c2p[0], &r, sizeof(int));
	close(c2p[0]);

	wait(0);

	printf("Child doubled it to: %d\n", r);	

	return 0;
}
