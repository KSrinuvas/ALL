#!/usr/bin/perl
#BUG BUSTER: Find and fix the bugs in the following program:

$num = <STDIN>;
chomp ($num);
$x = "";
$x .= "hello";
if ($x ne "goodbye" | $x eq "farewell") { 
		$result = $num eq 0 ? 43;
} else {
		$result = $num++;
}
print("the result is $result\n");

