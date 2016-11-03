#include <stdio.h>
int main()
{
	int n,i=0;
	int *table;
	scanf("%d",&n);
	table=(int*)malloc(n*sizeof(int));
	//memset(table,0,n*sizeof(int));
	for(i=0;i<n;i++)
	{
		table[i]++;
		printf("%4d",table[i]);
	}
	free(table);
	return 0;
}
