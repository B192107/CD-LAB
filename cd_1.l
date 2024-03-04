%{
	int v_c=0;
	int c_c=0;
%}

%%
[aeiouAEIOU] {v_c++;}
[a-zA-Z] {c_c++;}
\n {return 0;}
%%

int yywrap(){}
int main(){
	printf("enter the string :");
	yylex();
	printf("no of vowels- %d\n no of consonants- %d",v_c,c_c);
	return 0;
}
