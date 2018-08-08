#!/bin/bash

text_cleaner(){
	./date_remove.awk $1 		|
	./long_number_remove.awk 	|
	./headline_number_remove.awk	|
	./uppercase_remove.awk		|
	./whitespace_remove.awk		|
	./numeric_line_remove.awk	|
	./singleton_remove.awk		|
	./blank_line_remove.awk		

}

text_cleaner $1 > "temp"

slicing(){
	./sentence_cutter.x temp 
}

slicing temp > "output"

rm temp

exploration(){
	
	./descriptive_stats.x output
} 

exploration output  > "stats"

