#include<stdio.h>



void cpu()

{

    printf("cpu\n");

}



 __global__ void gpu()

{

    printf("gpu\n");

}



int main()

{

    cpu();

    gpu<<<1,1>>>();

    cudaDeviceSynchronize();

} 
