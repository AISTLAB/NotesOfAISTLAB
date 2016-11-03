#include <stdio.h>
void show1(int n)
{
	int i,j;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n-i-1;j++)
		{
			printf(" ");
		} 
		for(j=0;j<2*i+1;j++) 
		{
			printf("*");
		}
		printf("\n");
	}
	for(i=n-2;i>=0;i--)
	{
		for(j=0;j<n-i-1;j++)
		{
			printf(" ");
		} 
		for(j=0;j<2*i+1;j++) 
		{
			printf("*");
		}
		printf("\n");
	}
}
void show2(int n)
{
	int i,j,k;
	for(k=0;k<2*n-1;k++)
	{
		i=k;
		if(k>=n)i=n-2-(k-n);
		for(j=0;j<n-i-1;j++)
		{
			printf(" ");
		} 
		for(j=0;j<2*i+1;j++) 
		{
			printf("*");
		}
		printf("\n");
	}	
}
void show3(int n)
{
	int i,j,k;
	for(k=0;k<2*n-1;k++)
	{
		i=(k>=n)*(n-2-(k-n))+(k<n)*k;
		for(j=0;j<n-i-1;j++)
		{
			printf(" ");
		} 
		for(j=0;j<2*i+1;j++) 
		{
			printf("*");
		}
		printf("\n");
	}	
}
int main()
{
	int n;
	do
	{
		scanf("%d",&n);
		printf("method 1\n");
		show1(n);
		printf("method 2\n");
		show2(n);
		printf("method 3\n");
		show3(n);
		printf("press le zero to exit.");	
	}
	while(n>0);
	return 0;	
} 
