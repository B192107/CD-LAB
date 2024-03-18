%{
#include<stdio.h>
int flag=0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
AtithmeticExpression: E{
printf("\nResult=%d\n", $$);
return 0;
};
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1=$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main(){
	printf("\nEnter Any Arthmetic expression which can have operations Add,Sub,Mul,Div,Modulo and round brackets\n");
	yyparse();
	if(flag==0){
		printf("\nentered expression is valid\n");
	}
}
void yyerror(){
	printf("\nEntered arthmetic expression is invalid\n");
	flag=1;
}
