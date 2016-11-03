//bitSieve.cpp
//bitSieve.cpp
//MOD24：bit位数组.筛法
//BY LG
#include <iostream>
#include <ctime>
#define iPRIME 8

const unsigned char base=255, M8=7;
const unsigned char BASE[]={128,64,32,16,8,4,2,1};
const int iPrime[iPRIME]={1,5,7,11,13,17,19,23};
int COUNT, iprime, miniCOUNT;
int A0, A1, k0, k1, m, n;
using namespace std;

void subSieve(int X3, int M, int N, int A, unsigned char *P)
{
	for( ; A<X3; )
	{
		if(P[A>>3] & BASE[A&M8])
		{
			P[A>>3] ^= BASE[A&M8];
			miniCOUNT--;
		}
		A+=M;

		if(A>=X3)break;	
		if(P[A>>3] & BASE[A&M8])
		{
			P[A>>3] ^= BASE[A&M8];
			miniCOUNT--;
		}
		A+=N;
	}
}
void Sieve(int X3, unsigned char *P)
{
	int i=iprime;
	for( ; A0<X3; )
	{
		if(P[i>>3] & BASE[i&M8])
		{
			if(i%2)subSieve(X3, m, n, A0, P);
			else subSieve(X3, n, m, A1, P);
		}

		if(i%2)
		{
			m+=2, n+=2;
		}
		else 
		{
			m+=2, n+=6;
			A0+=k0, k0+=24;//加差.二阶等差数列二次差项24
			A1+=k1, k1+=24;//加差.二阶等差数列二次差项24
		}
		i++;
	}
	iprime=i;
}

unsigned char* bitSieve(int X0)
{
	int X=X0;
	if(X0%2)X0++;
	int X06=X0/6,	X03=X06*2;
	if(X0%6)X03++;
	unsigned char *PSieve;
	if(X==1){ COUNT=0; return PSieve;}
	if(X==2){ COUNT=1; return PSieve;}

	miniCOUNT=X03;// 设置6n±1型的伪素数
	int X024=X03>>3;// X03/8
	int X03m8=X03&M8;// X03%8
	if(X03m8)X024++;
	PSieve=new unsigned char[X024];
	for(int r=0; r<X024; r++)PSieve[r]=base; //11111111(8)
	Sieve(X03, PSieve);
	PSieve[0]-=BASE[0];//排除1
	miniCOUNT--;
	COUNT=miniCOUNT+2;
		
	return PSieve;
}
void initial()
{
	A0=8,  A1=16;//二阶等差数列起始项，素p的线筛从p^2的位置起
	k0=32, k1=40;//二阶等差数列一次差项
	m=3, n=7;    //交替增加检测项
	iprime=1;    //从5起筛
}

int main(int argc, char* argv[])
{
	while(1)
	{
		initial();
		int X, X0;
		//输入检测范围，X<=0 将退出
		cin>>X;
		if(X<=0)break;
		time_t st=clock();
		bitSieve(X);
		cout<<"primes within "<<X<<": "<<COUNT<<endl;
		cout<<endl<<"timer: "<<clock()-st<<endl;
		cout<<"_________________________"<<endl;
	}
	system("PAUSE");
	return(EXIT_SUCCESS);
}