#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int checkPrime(int n) {
    int i;
    if (n == 1) {
        return 0;
    }
    for (i = 2; i <= n / 2; i++) {
        if (n % i == 0) {
            return 0;
        }
    }
    return 1;
}

int main(int argc, char** argv) {
    int a2b, b2a, n;

    a2b = open("./a2b", O_RDONLY);
    b2a = open("./b2a", O_WRONLY);

    do {
        read(a2b, &n, sizeof(int));
        if (n >= 0) {
            printf("Checking number: %d\n", n);
            int isPrime = checkPrime(n);
            write(b2a, &isPrime, sizeof(int));
        }
    } while (n >= 0);

    close(a2b);
    close(b2a);

    return 0;
}
