/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}
 
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with phone numbers, third rule
matches with any character except newline and
fourth rule does not take input after the enter***/
%%
[0-9]+   {printf("%s is a phone number \n", yytext);}
[A-Z]    {printf("%s is a capital letter\n", yytext);}
.        {printf("%s is neither a phone number nor a capital letter\n", yytext);}
\n       {return 0;}
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
return 0;
}
