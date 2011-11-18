#include <stdio.h>

int main() {
    int i;
    int count = 0;

    for (i = 1; i < 1000; i++) {
        if ((i % 5 == 0) || (i % 3 == 0)) {
            count += i;
        }
    }
    printf("%i\n", count);
    return 0;
}
