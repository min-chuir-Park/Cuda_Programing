when you use gpu_function

you use below grammer 
function<<< block,thread>>>()

then the gpu function is operated serially untill 32 thread

so you could only operate serially 32 things


if block is above 2 or thread is aboce 33, gpu is not operated serially.

