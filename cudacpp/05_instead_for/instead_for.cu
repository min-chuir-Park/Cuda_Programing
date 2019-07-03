#include<stdio.h>

__global__ void safty(int *a, int N,int arg)
{
 int i = threadIdx.x + blockIdx.x*blockDim.x;
  if(arg ==0)
  {
    if(i < N)
    {
        a[i] = 1;
    }
  }
  else
  {
    if(i <N)
    {
    a[i]*=2;
    printf("%d",a[i]);
    }
  }
}

int main()
{
    int *a;
    size_t size = 100;
    int N = size*sizeof(int);
    int thread = 32;
    int block = (N-1)/thread +1;
    cudaMallocManaged(&a,N);
    safty<<<block,thread>>>(a,N,0);
    safty<<<block,thread>>>(a,N,1);
    cudaDeviceSynchronize();
    cudaFree(a);

}
