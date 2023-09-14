/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}

%{
#include <stdio.h>
%}
 
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline, third rule 
does not take input after the enter***/
%%
[ \t]+            {/*ignore whitespaces */}
\n                {printf("\n");} //Start a new line for each sentence
[A-Za-z0-9]+      {printf("%s\n", yytext);} //Print individual words
.                 {/*Ignore other characters*/}
%%
 
/*** Code Section prints the number of
capital letter present in the given input***/
int yywrap(){}
int main(){
 
// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
          which contains the input*/
/* yylex() - this is the main flex function
          which runs the Rule Section*/
// yytext is the text in the buffer
 
// Uncomment the lines below
// to take input from file
// FILE *fp;
// char filename[50];
// printf("Enter the filename: \n");
// scanf("%s",filename);
// fp = fopen(filename,"r");
// yyin = fp;
 
yylex();
printf("\nNumber of Captial letters in the given input - %d\n", count);
return 0;
}