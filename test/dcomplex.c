/*
This file defines common arithmetic operations for complex type.
*/

#include <math.h>
#include "dcomplex.h"


/* Complex Addition */
void z_add(doublecomplex *c, doublecomplex *a, doublecomplex *b){

  c->r = a->r + b->r;
  c->i = a->i + b->i;
  
}


/* Complex Division */
void z_div(doublecomplex *c, doublecomplex *a, doublecomplex *b)
{
  double ratio, den;
  double abr, abi;
  
  if( (abr = b->r) < 0.)
    abr = - abr;
  if( (abi = b->i) < 0.)
    abi = - abi;
  if( abr <= abi )
    {
      if(abi == 0){
	printf("z_div.c:  Division by zero\n");
	exit(1);
      }	  
      ratio = b->r / b->i ;
      den = b->i * (1 + ratio*ratio);
      c->r = (a->r*ratio + a->i) / den;
      c->i = (a->i*ratio - a->r) / den;
    }
  else
    {
      ratio = b->i / b->r ;
      den = b->r * (1 + ratio*ratio);
      c->r = (a->r + a->i*ratio) / den;
      c->i = (a->i - a->r*ratio) / den;
    }
}


/* Complex-Double Multiplication */
void zd_mult(doublecomplex *c, doublecomplex *a, double *b)
{
  
  c->r = (a->r * *b);
  c->i = (a->i * *b);

}




/* returns sqrt(z.r^2 + z.i^2) */
double z_abs(doublecomplex *z){

  double temp;
  double real = z->r;
  double imag = z->i;

  if(real < 0)
    real = -real;
  if(imag < 0)
    imag = -imag;
  if(imag > real){
    temp = real;
    real = imag;
    imag = temp;
  }
  if((real+imag) == real)
    return(real);
  
  temp = imag/real;
  temp = real*sqrt(1.0 + temp*temp);  /*overflow!!*/
  return(temp);
}




/* Approximates the abs */
/* returns abs(z.r) + abs(z.i) */
double z_abs1(doublecomplex *z){
  
  double real = z->r;
  double imag = z->i;
  
  if(real < 0)
    real = -real;
  if(imag < 0)
    imag = -imag;
  
  return (real + imag);
}






