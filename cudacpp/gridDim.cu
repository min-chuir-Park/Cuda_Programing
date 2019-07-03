#include<stdio.h>
#include<assert.h>
__global__ void _array(int *a, int N)
{
    int index = threadIdx.x+blockIdx.x*blockDim.x;
    int stride = gridDim.x*blockDim.x;

    for(int i = index; i <N; i+=stride)
    {
            a[i] = 1;   
    }
}


int main(void)
{

    int n = 10000;
    size_t size = sizeof(int)*n;
    int _thread = 32;
    int _block = 100;//(n-1)/_thread + 1;
    int *a;
    cudaMallocManaged(&a,size);
    _array<<<_block,_thread>>>(a,size);
    cudaDeviceSynchronize();
    for(int i = 0; i<n;i++)
    {
        assert(a[i] == 1);
    }
    printf("success");
    cudaFree(a);

}


