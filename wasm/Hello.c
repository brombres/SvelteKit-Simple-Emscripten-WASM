#include <stdio.h>

int add( int a, int b )
{
  return a + b;
}

const char* hello()
{
  return "Hello from WASM";
}

int main(void)
{
  printf("Hello World!\n");
  return 0;
}

