%{
int characters = 0;
int number_of_words = 0;
int lines = 0;
%}

%%

[a-zA-Z]+	{ number_of_words++; characters += strlen(yytext); } 
\n		{ characters++; lines++; }
.		{ characters++;}

%%

int main(int argc, char *argv[]){
	yylex();
	printf("Total words: %d\nTotal characters: %d\nTotal lines: %d\n",number_of_words, characters, lines);

}
