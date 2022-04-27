%{
	#include<stdio.h>
	#include<string.h>
	
		
%}

del			[ \n\t]
letter		[a-zA-Z]
digit		[0-9]
sign		[+-]
		

%%

{del}+ 

"abstract"|"and"|"if"|"else"|"echo"|"php"|"function"|"while"|"for" {
	printf("Token < KW, %s >\n", yytext);
	fprintf(yyout, "Token < KW, %s >\n", yytext);	
}

$("_"|{letter})("_"|{letter}|{digit})* {
	printf("Token < ID, %s >\n", yytext);
	fprintf(yyout, "Token < ID, %s >\n", yytext);
}


{digit}+("."{digit}+)?("E"{sign}?{digit}*)? {
	int result = -1;
	int flage = 0;
	for(int i = 0; i < yyleng; i++){
		if(yytext[i] == '.' || yytext[i] == 'E'){
			printf("Token < float, %s >\n", yytext);
			fprintf(yyout, "Token < float, %s >\n", yytext);
			flage = 1;
		}
	}
	if(flage != 1){
		printf("Token < int, %s >\n", yytext);
		fprintf(yyout, "Token < int, %s >\n", yytext);
	}
}

"+"|"-"|"="|"*"|"/"|"<"|">"|"<="|">="|"=="|"!="|"%"|"**"   	{

	printf("Token <OP,%s> \n", yytext);
	fprintf(yyout, "Token < OP, %s >\n", yytext);
}

"["|"]"|"{"|"}"|"("|")"|";"|","					{
	
		printf("Token <PUN,%s> \n", yytext);
		fprintf(yyout, "Token < PUN, %s >\n", yytext);
}

'.*'		{

	printf("Token <Ch,%s> \n", yytext);
	fprintf(yyout, "Token < Char, %s >\n", yytext);	
}

\"(.)*\"		{

	printf("Token <String,%s> \n", yytext);
	fprintf(yyout, "Token < String, %s >\n", yytext);
}


"//"(.*)(\n)   
"/*"(.*|\n)"*/"


.		{
	printf("Error %s\n", yytext);
	fprintf(yyout, "Error\n", yytext);
}
	

%%

int yywrap(void){}

int main(int argc, char* argv[])
{
	//printf("Enter String: \n");

	extern FILE *yyin;
	
	//taking input from file	
	yyin = fopen("input.txt", "r");

	yyout = fopen("output.txt", "w");	
	
	
	
	yylex();
	
	

	fclose(yyin);
	fclose(yyout);
	
	
	return 0;
}	 	