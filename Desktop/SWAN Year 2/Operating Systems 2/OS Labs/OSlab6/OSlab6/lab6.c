// lab 2  question 3

/*
 
 Write a program using functions to determine if an array of the size of your choice (5, 6..
 
 The main function must input the data; display the results of the 3 functions.
 
 •	The sum of the contents of the array;
 •	The max and min values in the array
 •	whether an array of ints is symmetrical.
	That is, its first element of array 1 is the same as its last element
	of array 2, its second element is the same as its next-to-last element etc.
	
 */
#include<stdio.h>



#define SIZE 5

int symmetric(int []);
int sum_array(int []);
int max_value(int []);
int min_value(int []);

void main()
{
    
    int index, array[SIZE];
    
    
    //input numbers into the array
    for(index=0;index < SIZE;index++)
    {
        printf("enter a number into the array: ");
        scanf("%d",&array[index]);
        fflush(stdin);
        
    }
    
    
    
    // to find the sum of the array
    
    printf("the sum of the array is: %d\n",sum_array(array));
    
    
    
    // to find the max value of the array
    
    printf("the max of the array is: %d\n",max_value(array));
    
    
    // to find the min value of the array
    
    printf("the min of the array is: %d\n",min_value(array));
    
    
    
    //to determine if array is symmetrical
    
    if (symmetric(array)==1)
        printf("\narray is symmetrical\n");
    else
        printf("\narray is not symmetrical\n");
    
    
    getchar();
    
}

// sum the values of the array that is passed to the function
//return the sum

int sum_array(int array[SIZE])
{
    
    
    int index,sum =0;
    
    for (index = 0; index < SIZE; index++)
    {
        sum = sum + array[index];
    }
    
    return sum;
    
}



// find the min value of an array that is passed to the function
//return the min

int min_value(int array[SIZE])
{
    
    
    int index,min = array[0];  // declare and assign value to first element;
    
    
    for (index = 0; index < SIZE; index++)
    {
        if (array[index] < min)
            min = array[index];
    }
    
    return min;
    
}


// find the min value of an array that is passed to the function
//return the max

int max_value(int array[SIZE])
{
    
    
    int index,max = array[0];  // declare and assign value to first element;
    
    
    for (index = 0; index < SIZE; index++)
    {
        if (array[index] > max)
            max = array[index];
    }
    
    return max;
    
}



// determine if the array is symmetrical
//return true of false

int symmetric(int array[SIZE])
{
    
    int Ip=0,Jp=SIZE-1;
    
    // printf("before i is %d and j is %d\n",Ip,Jp);
    
    while(Ip<SIZE && Jp>=0 && Ip < Jp && array[Ip] == array[Jp])
    {
        Ip++ ;
        Jp--;
    }
    
    //  printf("after i is %d and j is %d",Ip,Jp);
    
    if(Ip == SIZE || Jp < 0 || Jp <= Ip)
        return 1;
    else
        return 0;
}