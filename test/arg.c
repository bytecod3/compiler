#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	// assgin a pointer to the given word
	char* p_word;
	char word[10] = "file";

	p_word = &word;
	
	// create a pointer to file object
	// FILE *file = fopen(argv[1], "r");

	// check is word given at the console
	if(argc > 1){
		//word = argv[1];

		// display ythe word given
		printf("%s", *p_word);
	}

	printf("%s", *p_word);


	printf("Error. Please specify input word");
}
