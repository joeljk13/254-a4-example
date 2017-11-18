#include <stdio.h>

unsigned int fib(unsigned int n) {
    if (n <= 1) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

int main(int argc, char **argv) {
    // this is a comment
    for (int i = 1; i < argc; ++i) {
        int x;
        sscanf(argv[i], "%d", &x);
        int y = fib(x);
        printf("%d\n", y);
    }
    return 0;
}
