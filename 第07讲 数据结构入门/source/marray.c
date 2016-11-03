#include <stdio.h>
int main()
{
	int i=0;
	int table[2][2][2]={
		1,3,
		5,7,
		
		2,4,
		6,8
	};
	int *p=**table;
	for(i=0;i<8;i++)
	{
		printf("%4d",*(p+i));
	}
	printf("\n%d %d %d",
		table[0][0][1],
		table[0][1][0],
		table[1][0][0]);
	return 0;
}
