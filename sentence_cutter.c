/* Sentence cutter. If longer than n words (" " separated)
cut the sentence with newline */

#include<stdio.h>
#include<string.h>
#include<ctype.h>
#include<time.h>
#include<stdlib.h>


int mean(int, int);

/* MAIN */

int main(int argc, char *argv[]){

	FILE *inp = fopen(argv[1], "r");	/*pointer to input file*/
	char c;
	int word_counter = 0;
	int r;
	
	srand((unsigned int)time(NULL));

	while((c = fgetc(inp)) != EOF){	
		
		printf("%c", c);
		
		if(isspace(c))
			++word_counter;
						/* Random cutter */	
		if(c == '\n')
			word_counter = 0;
	
		r = rand() % 10;

		if(word_counter == (5 + r)){
			printf("\n");
			word_counter = 0;
		}
	}

	return 0;
}


