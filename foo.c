#include "foo.h"

void foo() {
    int x = 0;
    for (int i = 0; i < 100; ++i) {
        x += i;
    }
    printf("%d\n", x);
}

static void NO_INLINE bar() {
}

void func_with_unrolled_loop() {

}

int main() {
    bar();
    blah();
    return 0;
}
