/**
 * @file array.h 
 * @author Matthew Olsen
 * @date September 23rd, 2015
 *  
 * Assignment: Lab 3 
 *
 * @brief header file for array.c 
 * @details see array.c for details  
 * @bugs none
 * @todo add floating point versions of the functions
 */

#ifndef ARRAY_H_
#define ARRAY_H_

/* to be used for the get_count function */
#define LT 1
#define LE 2
#define GT 3
#define GE 4

#include <stdlib.h> 		/* for size_t declaration */

/* function declarations go here */
void print_array(int a[], size_t size);
int find_max(int a[], size_t size);
int find_min(int a[], size_t size);
int midpoint(int a[], size_t size);
int get_count(int a[], size_t size, int type, int value);
int linear_search(int a[], size_t size, int value);
int find_sum(int a[], size_t size);
double find_average(int a[], size_t size);
void bubble_sort(int a[], size_t size);
void insertion_sort(int a[], size_t size);
void reverse(int a[], size_t size);
double find_median(int a[], size_t size);
int even_count(int a[], size_t size);
int odd_count(int a[], size_t size);
int divisible_count(int a[], size_t size, int value);

#endif

