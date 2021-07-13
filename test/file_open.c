// simple file to test file open function

#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]){
	FILE *input = fopen(argv[1], "r");
	
	if(input){
		printf("File given\n");

	}else{
		printf("No file\n");
	}

		
}
