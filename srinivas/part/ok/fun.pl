#!/usr/bin/perl


## Global varible 
$str = "this is global string";

sub aa {
	
		## private varible 
		local $str;	
		$str = "this is private varible";
		print"inside the fun var ---->>>  $str\n";
		bb();
}

sub bb {
		## private varible 
		print"inside the fun var ====>>> $str\n";
}
aa;

print"outside the glob str : ****>>>>   $str\n";



















