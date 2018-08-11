#include <unistd.h>
#include <stdio.h>
int main(int argc, char** argv){

    while (1){
        char buf[256];
        size_t n = read(0, buf, 256);
        printf("hello %s\n", buf);
    }
    return 0; 
}
