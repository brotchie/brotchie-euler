#include <stdio.h>

int main() {
    int current;
    int previous;
    int tmp;
    int count = 0;

    for(current = 2, previous = 1; current <= 4000000;) {
        count += (current % 2 == 0) * current;
        tmp = current + previous;
        previous = current;
        current = tmp;
    }
    printf("%i\n", count);
    return 0;
}
