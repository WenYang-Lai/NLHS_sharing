#include <stdio.h>

void open_shell(){
    system("/bin/sh");
}


int main(int argc, char** argv){
    char name[256];
    printf("What's your name: ");
    scanf("%s\n", name);
    printf("hello: %s\n");
}
