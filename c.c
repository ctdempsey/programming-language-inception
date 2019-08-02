#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("Hello from C!\n");
    int status = system("python3 python.py");
    printf("Goodbye from C!\n");
    return 0;
}
