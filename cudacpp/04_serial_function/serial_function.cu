#include<stdio.h>

__global__ void serial()
{
    printf("%d\n",threadIdx.x);
}


int main()
{
    serial<<<1,10>>>();
    cudaDeviceSynchronize();
}
