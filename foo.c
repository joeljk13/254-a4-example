#include "foo.h"

int foo() {
    int x = 0;
    for (int i = 0; i < 100; ++i) {
        x += i;
    }
    printf("%d\n", x);
    return x;
}

static void NO_INLINE bar() {
    asm("");
}

void NO_INLINE compilicated_func() {
    int x;
    scanf("%d\n", &x);

    printf("%d\n", x);
}

int main() {
    bar();
    compilicated_func();
    blah();
    return 0;
}
