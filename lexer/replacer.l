%{
char r[3] = "ABC";
int len = char_length;
extern char word[len];
%}

%%

[abc]	{
	for(int i=0; i <= strlen(word; i+3){
		int status = strncmp(word[1], "abc", 3);
		if(status == 0){
			// abc  found in string
			memcpy(word[i]+3, r, strlen(r));
			printf("%s", word[1]);
		}else{
			printf("No match for abc found");
		}
		
	};
}

%%

int main(int argc, char *argv[]){


	// check if word is given
	if(argc != 1){
		perror(argv[1]);
		return 1;
	}

	// assign the given input to word variable
	extern char_length = strlen(argv[1]);
	char [strlen(argv[1])] word = argv[1];
	
	yylex();
	printf("Replacing complete!");

}
