#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

void init(){
    setbuf(stdout, 0);
    setbuf(stdin, 0);
}

int main(int argc, char** argv){
    init();
    char buf[0x20];
    read(0, buf, 0x100);
    return 0; 
}
