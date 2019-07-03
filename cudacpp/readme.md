Grammer1

if number of data is above thread*block,

then you have to use gridDim concept

so you add for(int i = index ; i<N; i+=stide)
in gpu function

then each thread calculate i,i+thread, i+2*thread ...


Grammer 2

assert.h is debug function
assert(a != Null)
means that a is Null and assert(a != NULL) is false,
then the operating is stoped.

only debug version could used this, 
release version can not used this
