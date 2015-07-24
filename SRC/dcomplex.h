#ifndef __SUPERLU_dCOMPLEX /* allow multiple inclusions */
#define __SUPERLU_dCOMPLEX

/* 
This header file is to be included in source files z*.c
*/


#ifndef COMPLEX_INCLUDE
#define COMPLEX_INCLUDE


typedef struct { double r, i; } doublecomplex;


#ifdef __cplusplus
extern "C" {
#endif

/* Prototypes for functions in complex.c */
void z_add(doublecomplex *, doublecomplex *, doublecomplex *);
void z_div(doublecomplex *, doublecomplex *, doublecomplex *);
void zz_mult(doublecomplex *, doublecomplex *, doublecomplex *);
void zd_mult(doublecomplex *, doublecomplex *, double *);

int z_eq(doublecomplex *, doublecomplex *);

double z_abs(doublecomplex *);     /* exact */
double z_abs1(doublecomplex *);    /* approximate */

void d_cnjg(doublecomplex *, doublecomplex *);
void z_exp(doublecomplex *, doublecomplex *);
double d_imag(doublecomplex *);


#ifdef __cplusplus
  }
#endif

#endif

#endif  /* __SUPERLU_dCOMPLEX */
