#include <stdio.h>
#include<stdlib.h>
#include <string.h>


void replace_abc(char* input_word, int len){

    // stabc
    int index = 0;

    while(index <= len-3){ 
        
        if(strncmp(input_word+index, "abc",3) == 0){ // if same return index(a) = 2
            memcpy(input_word+index, "ABC", 3);
            index+=3;
        }else{
            index++;
        }
    }
}

int main(int argc, char *argv[]){
    char my_word[20];
    printf("Enter your word:");
    scanf("%s", my_word);

    printf("Original:%s\n", my_word);

    replace_abc(my_word, strlen(my_word));

    printf("Replaced:%s\n", my_word);

    return 0;
}



