#!/usr/bin/perl -w
use strict;


## file handling functions are 2
	## 1) tell(File_handler)  it will tell the curent postion of the file 
	## 2) seek(File_handler,0,0)  ## read some line agin set the starting postion 
	##    seek(File_handler,0,1)  ## it tell the reads line current postion of the file 
	##    seek(File_handler,0,2)  ## end of the file 



my $file = 'aa.txt';

open(IN,"$file") || die "Not able to open '$file' $!";

my @arr = <IN>;
chomp(@arr);

seek(IN,0,0);

my $li = <IN>;
chomp($li);

print tell(IN),"\n";
seek(IN,0,1);

while (my $line = <IN>)	{
		chomp($line);
		print"$line\n";
}
		

close(IN);
