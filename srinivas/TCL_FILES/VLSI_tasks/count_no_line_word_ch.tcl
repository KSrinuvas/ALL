#!/usr/bin/tclsh

 
#Regexp For Number of Lines,Words and Characters


# This procedure regular expression will search each new line in given pattern
proc numberOfLines {str} {
 #return [regexp -all {[\n]+} $str]
 set dd [regexp -all {[\n]+} $str]
 return $dd
}


# This procedure regular expression will search each charcter (numbers, chars)
proc numberOfLetters {str} {
 return [regexp -all  {[a-z0-9A-Z]} $str]
}

# This procedure regular expression will search each word separated by space
proc numberOfWords {str} {
 return [regexp -all {\w+} $str]
}

set str "Write a procedure to count the number of lines in a string.  \n \
Do it without looping.  Modify the procedure so that it counts the number \n \
of digits 12345 67890 9087."

puts "The Number of Lines in a given string is [numberOfLines $str]"
puts "The Number of Digits in a given String is [numberOfLetters $str]"
puts "The Number of Digits in a given String is [numberOfWords $str]"


if 0 {

Output:

The Number of Lines in a given string is 2
The Number of Digits in a given String is 128
The Number of Digits in a given String is 30

}
