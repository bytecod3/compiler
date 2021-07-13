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
	
	// allow reading an external text file
	FILE *input = fopen(argv[1], "r");
	
	// check for external file argument
	if(argc > 1){
		if(!(yyin = input)){
			perror(argv[1]); // no file given. Default => stdin
			return 1;	
		}
	}
		
	yylex();
	printf("Total words: %d\nTotal characters: %d\nTotal lines: %d\n",number_of_words, characters, lines);

}        yylex();

