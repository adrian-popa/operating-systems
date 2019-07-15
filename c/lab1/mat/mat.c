#include <stdio.h>
#include <stdlib.h>

int** readMatrix(char* filename, int* n, int* m) {
	// STORING THE MATRIX FROM THE INPUT FILE
	FILE* fin = fopen(filename, "r");
	
	fscanf(fin, "%d %d", n, m);

	int i, j;

	int** mat = (int**) malloc(sizeof(int*) * *n);

	for (i = 0; i < *n; i++) {
			mat[i] = (int*) malloc(sizeof(int) * *m);
	}

	for (i = 0; i < *n; i++) {
		for (j = 0; j < *m; j++) {
			fscanf(fin, "%d", &mat[i][j]);
		}
	}

	fclose(fin);

	return mat;
}

void writeMatrix(char* filename, int n, int m, int** mat) {
	// WRITING THE MATRIX TO THE OUTPUT FILE
	FILE* fout = fopen(filename, "w");

	fprintf(fout, "%d %d\n", n, m);

	int i, j;

	for (i = 0; i < n; i++) {
		for (j = 0; j < m; j++) {
			fprintf(fout, "%d ", mat[i][j]);
		}
		fprintf(fout, "\n");
	}

	fclose(fout);
}

int main(int argc, char** argv) {
	int n, m, i;

	int** mat = readMatrix(argv[1], &n, &m);

	writeMatrix(argv[2], n, m, mat);

	for (i = 0; i < n; i++) {
		free(mat[i]);
	}
	free(mat);

	return 0;
}
