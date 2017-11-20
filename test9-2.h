unsigned int fib(unsigned int y) {
    if (y <= 1) {
        return y;
    }
    return fib(y - 1) + fib(y - 2);
}
