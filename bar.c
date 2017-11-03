#include "foo.h"

static void NO_INLINE bar() {
}

void func() {
    bar();
}
