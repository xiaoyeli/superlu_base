#include <stdio.h>
#include "dcomplex.h"



void print_comp(doublecomplex *a){

  printf("(%f, %f)", a->r, a->i);
}



void main(){
/*
  doublecomplex a = {1,2};
  doublecomplex b;

  printf("a = %f,%f\n", a.i, a.r);
  b = a;
  printf("b = %f,%f\n", b.i, b.r);
  

  a.i = 0; a.r=0;
  printf("a = %f,%f\n", a.i, a.r);
  printf("b = %f,%f\n", b.i, b.r);
*/

  doublecomplex a = {1,2};
  doublecomplex b = {3,4};

/*  print_comp(a);  printf("\n");
  print_comp(b);  printf("\n");

  a = (doublecomplex) {5.0,6.0};
  print_comp(a);  printf("\n");

  print_comp( (doublecomplex) {7.0,8.0} );
*/

  print_comp( &((doublecomplex) {5.0, 6.6}) );

}


