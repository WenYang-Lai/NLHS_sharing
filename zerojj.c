#include <stdlib.h>
#include <sys/mman.h>
#include <string.h>
char buf[] = "H\xbb/usr/binh/id\x00SH\x89\xe1j\x00QH\x89\xcfH\x89\xe6H1\xd2H\xc7\xc0;\x00\x00\x00\x0f\x05";

int main(){
    char *p = mmap(0,0x1000,7,MAP_PRIVATE|MAP_ANONYMOUS,-1,0);
    memcpy(p,buf,0x100);
    ((void(*)())p)();
}
