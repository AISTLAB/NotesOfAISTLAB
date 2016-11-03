#include <stdio.h>
int main()
{
	char i,j;
	char **table;
	table=(char**)malloc(10*sizeof(char*));
	for(i=0;i<10;i++)
	{
		table[i]=(char*)malloc(10*sizeof(char));
	}
	for(j=0;j<10;j++)
		for(i=0;i<10;i++)
			table[j][i]=i+j;
	int *p=*table;
	for(i=0;i<100;i++)
		printf("%8d",*(p+i));
	for(i=0;i<10;i++) 
		free(table[i]);
	free(table);
	return 0;
}

