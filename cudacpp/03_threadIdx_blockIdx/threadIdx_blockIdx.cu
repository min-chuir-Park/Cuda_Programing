
#include<stdio.h>

__global__ void end()
{
    if(threadIdx.x==31 && blockIdx.x == 1023)
    {
        printf("end\n");
     }
 }

int main()
{
     end<<<1024,32>>>();
     cudaDeviceSynchronize();
}     
