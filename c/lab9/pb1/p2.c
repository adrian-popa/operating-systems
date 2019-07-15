#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char** argv) {
	int fifo = open("./fifo", O_RDONLY);

	int n;
	char buffer[100];
	do {
		read(fifo, &n, sizeof(int));	
		if (n > 0) {
			read(fifo, buffer, n);
			buffer[n] = '\0';
			printf("%s", buffer);	
		}
	} while(n > 0);

	close(fifo);
	return 0;
}
