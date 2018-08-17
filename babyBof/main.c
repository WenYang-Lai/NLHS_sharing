#include <stdio.h>
#include <stdlib.h>

void magic(){
    system("/bin/sh");
}

void init(){
    setbuf(stdout, 0);
    setbuf(stdin, 0);
}
int main(int argc, char** argv){
    init();
    char name[256];
    printf("What's your name: ");
    scanf("%s", name);
    printf("hello: %s\n", name);
}
