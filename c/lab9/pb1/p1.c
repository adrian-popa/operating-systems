#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char** argv) {
	char cmd[100];
	strcpy(cmd, "");
	
	int i;
	for (i = 1; i < argc; i++) {
		strcat(cmd, argv[i]);
		strcat(cmd, " ");
	}

	FILE* c2p = popen(cmd, "r");

	int fifo = open("./fifo", O_WRONLY);

	char buffer[100];
	strcpy(buffer, "");
	while(fgets(buffer, 100, c2p)) {
		int n = strlen(buffer);
		write(fifo, &n, sizeof(int));
		buffer[n] = '\0';	
		write(fifo, buffer, n);
		strcpy(buffer, "");
	}

	int end = 0;	
	write(fifo, &end, sizeof(int));

	pclose(c2p);
	close(fifo);
	return 0;
}
