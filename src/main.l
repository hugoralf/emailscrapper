
%{
#include <stdio.h>
%}
WN [a-zA-Z0-9]
WNC [a-zA-Z0-9\-\_\.]
BACKSPACE [\t\n\r]

%%
{WN}{WNC}+{WN}[@]{WN}*{WNC}*{WN} {
	printf("%s\n", yytext);
}
{WN}{WNC}+{WN}[@]{WN}*{WNC}*[a-zA-Z0-9\-] {
}
{BACKSPACE} ;
. ;
%%

int main() {
  yylex();
  return 0;
}
