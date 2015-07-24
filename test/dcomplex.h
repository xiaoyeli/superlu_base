/* 
This header file is to be included in source files z*.c
*/


#ifndef COMPLEX_INCLUDE
#define COMPLEX_INCLUDE


typedef struct { double r, i; } doublecomplex;


/* Prototypes for functions in complex.c */
void z_add(doublecomplex *c, doublecomplex *a, doublecomplex *b);
void z_div(doublecomplex *c, doublecomplex *a, doublecomplex *b);
void zz_mult(doublecomplex *c, doublecomplex *a, doublecomplex *b);
void zd_mult(doublecomplex *c, doublecomplex *a, double *b);

double z_abs(doublecomplex *z);
double z_abs1(doublecomplex *z);


#endif
