%{
int total_verbs = 0;

%}

%%
(is)|(am)|(are)|(were)|(was)|(be)|(being)|(been)|(do)|(does)|(did)|(will)|(would)|(should)|(can)|(could)|(has)|(have)|(had)|(go) { printf("\n%s(verb) \n", yytext); total_verbs++; }


%%
int main(int argc, char *argv[]){

    FILE *my_file = fopen(argv[1], "r");


    // check for external file
    if(argc > 1){
        if(!(yyin=my_file)){
            perror(argv[1]);
            return 0;

        }
    }

    

    yylex();

    printf("\nTotal_verbs: %d\n", total_verbs);
    return 0;
}