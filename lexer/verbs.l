%{
int total_verbs = 0;

%}

%%
(is)|(am)|(are)|(were)|(was)|(be)|(being)|(been)|(do)|(does)|(did)|(will)|(would)|(should)|(can)|(could)|(has)|(have)|(had)|(go) { printf("\n%s(verb) \n", yytext); total_verbs++; }


%%

int main(int argc, char *argv[]){
	
	FILE *input_file = fopen(argv[1], "r");

	// check if an external file has been given
	if(argc >1 ){
		if(!(yyin = input_file)){
			perror(argv[1]);
			return 0;
		}
	}
	

	yylex();
	
	printf("Total verbs: %d\n", total_verbs);	

	return 0;	
}
