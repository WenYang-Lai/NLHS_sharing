#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void init(){
    setbuf(stdin, 0);
    setbuf(stdout, 0);
}

void magic(){
    system("/bin/sh");
}

int main(){
    init();
    int n;
    char buf[2048];
    n = read(0, buf, 2048);
    buf[n-1] = 0;
    printf(buf);
    puts("Bye!");
}
