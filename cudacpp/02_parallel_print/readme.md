This code is repeat 25 times using gpu

the grammer is like this
paral <<< number_of_block, number_of_thread >>>()

it is better that number_of_thread is 32.
Although  your number_of_thread is 31, 
cuda calculate 1 block and 32 threads.

and

If your number_of_thread is 32,
cuda calculate using 2 blocks and 64 threads.
