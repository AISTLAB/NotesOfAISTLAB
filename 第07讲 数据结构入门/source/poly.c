#include <stdio.h>
typedef int  POLY[10];
int i;
void poly_add(POLY A,POLY B)
{
	for(i=0;i<10;i++)
		A[i]+=B[i];	
}
void poly_set(POLY A,int a[10])
{
	for(i=9;i>=0;i--)
		A[i]=a[i];
}
void poly_print(POLY A)
{
	for(i=9;i>=0;i--)
		if(A[i]!=0)
			printf("%dX^%d ",A[i],i);	
	printf("\n");			
}
int main()
{
	POLY A,B;
	int a[10]={1,3,5};
	int b[10]={3,5,0,5};
	poly_set(A,a);
	poly_set(B,b);
	poly_print(A);
	poly_print(B);
	poly_add(A,B);
	poly_print(A);
	return 0;
}
