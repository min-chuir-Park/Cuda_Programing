grammer 1

if you use gpu_function instead of for grammer

you have to use this formula

int index = threadIdx.x + blockIdx.x*blockDim.x


grammer 2

if you know number of data and number of thread,
you could use this formula

number_of_block = (ndata-1)/nthread+1;


grammer 3

if you use malloc
int *a;
size_t size = sizeof(int)*n
cudaMallocManaged(&a,size);
cudaFree(a);

size_t means unsigned int 


grammer 4

The reason why i use if(i<N)
is block*thread > n 
then it is possible that cuda device calculate remain thread
such as  (block*thread-n)



