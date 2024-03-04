%{
#include<stdio.h>
void fun(int );
int length;
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
void fun(int l)
{
	if(yytext[0]=='A'){
		if(length==3){
			printf("%s is word with length 3",yytext);
		}
	}
}
int yywrap(){}
int main(){
	yylex();
	return 0;
}
