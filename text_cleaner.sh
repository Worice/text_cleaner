#!/bin/bash

text_cleaner(){
	./date_remove.awk $1 		|
	./long_number_remove.awk 	|
	./headline_number_remove.awk	|
	./uppercase_remove.awk		|
	./whitespace_remove.awk		|
	./numeric_line_remove.awk
}

text_cleaner $1 > "output"
