#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char** argv) {
    int a2b, b2a, n, isPrime;

    a2b = open("./a2b", O_WRONLY);
    b2a = open("./b2a", O_RDONLY);
    
    do {
        scanf("Give a number n: %d", &n);
        if (n >= 0) {
            write(a2b, &n, sizeof(int));
            read(b2a, &isPrime, sizeof(int));
            printf("%s\n", isPrime ? "The number is prime." : "The number is not prime.");
        }
    } while (n >= 0);

    write(a2b, &n, sizeof(int));

    close(a2b);
    close(b2a);

    return 0;
}
