%option noyywrap
%{
	#include<stdio.h>
	
	int number;
	int identifier;
	int operator;
	int keyword;
	int specialcharacter;
	int othercharacter;				  
%}

%%
[a-zA-Z] {printf("Identifier: %s\n");
	identifier++;}

[0-9]* {printf("Number: %s\n");
	number++;}

"+"|"-"|"*"|"/"|"("|")"|")*"|")+"|"=" {printf("Operator: %s\n");
	operator++;}

"if"|"else"|"while"|"do"|"switch"|"case" {printf("Keyword: %s\n");
	keyword++;}

"!"|"@"|"*"|"&"|"^"|"%"|"$"|"#" {printf("Special Character: %s\n");
	specialcharacter++;}

. {printf("Other Character: %s\n");
	othercharacter++;}
%%

int main()
{
printf("Enter a string: \n");
yylex();
printf("This is number=%d and This is identifier=%d and This is operator=%d and This is keyword=%d and This is specialcharacter=%d and This is othercharacter=%d\n",
	number,identifier,operator,keyword,specialcharacter,othercharacter);
	return 0;
}


     