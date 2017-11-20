#include "test9-1.h"

static void NO_INLINE bar() {
    asm("");
}

void func() {
    // which bar?
    bar();
}
