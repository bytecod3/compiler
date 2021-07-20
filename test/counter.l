{%
int total_words=0, total_characters=0;


%}

%%

[a-zA-Z]+		{ total_words++; total_chracters++; }
. 			{ total_words++; total_characters++;}

%%

int main(int argc, char *argv[]{
	FILE* words = fopen(argv[1], "r");

	if(argc>1){
		if(!(yyin = words)){
			perror(argv[1]);
			return 0;
		}
	}


	yylex();
	printf("\nTotal words:%s\nTotal characters: %s\n", total_words, total_characters);
	

	return 0;

}
