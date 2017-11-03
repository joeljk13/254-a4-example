#include "foo.h"

static void NO_INLINE bar() {
    asm("");
}

void func() {
    bar();
}
