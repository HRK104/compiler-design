%{
 int evenN = 0;
 int i = 0;
%}

%%
[0-9]+     {i=atoi(yytext); 
          if(i%2==0)  
               evenN++; 
          } 
\n {}
. {}
%%

int main()
{
 yylex();
 printf("%8d\n",evenN);
 return 0;
}
