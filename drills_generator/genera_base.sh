#!/usr/bin/env bash

WORDS_PER_DRILL=60

# First parameter: letters that compose the selected words
# Second parameters: letters that must always be present for a word to be selected
char_filter() {
	cat en_US.dic | tr "[A-Z]" "[a-z]" | sed "s/\\/.*//g" | grep "^[$1]\{3,\}$" | grep "[$2]" | sort | uniq | sort -R | head -$WORDS_PER_DRILL 
}

char_filter "arensito" "a" > drills_1.txt
char_filter "arensitobg" "bg" > drills_2.txt
char_filter "arensitobgpf" "pf" > drills_3.txt
char_filter "arensitobgpflu" "lud" > drills_4.txt
char_filter "arensitobgpfludjv" "jv" > drills_5.txt
char_filter "arensitobgpfludjvhc" "hc" > drills_6.txt
char_filter "arensitobgpfludjvhcwym" "wym" > drills_7.txt
char_filter "arensitobgpfludjvhcwymqk" "qk" > drills_8.txt
char_filter "arensitobgpfludjvhcwymqkzx" "zx" > drills_9.txt
