#!/usr/bin/env bash

WORDS_PER_DRILL=60

# First parameter: letters that compose the selected words
# Second parameters: letters that must always be present for a word to be selected
char_filter() {
	cat en_US.dic | tr "[A-Z]" "[a-z]" | sed "s/\\/.*//g" | grep "^[$1]\+$" | sort -R | head -$WORDS_PER_DRILL
}

char_filter "arensito"
