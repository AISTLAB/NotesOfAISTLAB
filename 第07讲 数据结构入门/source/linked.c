#include <stdio.h>
#include <malloc.h> /*包含动态内存分配函数的头文件*/
#define N 3/*N为人数*/
typedef struct node
{
    char name[20];
    struct node *link;
} stud;
stud *creat(int n) 
{
    stud *p, *h, *s; 
    int i; 
    p = (stud *)malloc(sizeof(stud));
    p->name[0] = '\0'; 
    p->link = NULL; 
    h = p; 
    for(i = 0; i < n; i++)
    {
        s = (stud *) malloc(sizeof(stud));
        p->link = s; 
        printf("请输入第%d个人的姓名:", i + 1);
        scanf("%s", s->name); 
        s->link = NULL;
        p = s;

    }
    return(h);
}
void print(stud *s)
{
	printf("%s\n",s->name);
	if(s->link==NULL)return ;
	print(s->link);	
}
int main()
{
    stud *head= creat(N); 
    print(head);
    return 0;
}
