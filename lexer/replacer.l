%{
	#include <stdlib.h>
	#include<stdio.h>
%}

%%

[(abc)]	{ 
	int index = 0;
	while(index <= strlen(yytext)-3){ 
        
        if(strncmp(yytext+index, "abc",3) == 0){ 
            memcpy(yytext+index, "ABC", 3);
            index+=3;
        }else{
            index++;
        }
    };

	printf("%s", yytext);
}

%%


int main(int argc, char *argv[]){
	
	yylex();
	printf("Replacing complete!");

}
