#include<stdio.h>

__global__ void paral()
{
    printf("paral\n");
}



int main()

{
    paral<<<5,5>>>();
    cudaDeviceSynchronize();
}
