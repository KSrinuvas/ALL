#!/usr/bin/perl -w


$a = 3.14159;
{
	$a = 20;
  local $a = 3;
 # print "In block, \$a = $a\n";
 # print "In block, \$::a = $::a\n";
	bb($a);
}
#print "Outside block, \$a = $a\n";
#print "Outside block, \$::a = $::a\n";


bb($a);


sub bb {
		$a = shift;
		print"$a\n";
}



BEGIN {
		local $ab = 100;
		bb($ab);
}


