#!/usr/bin/perl
$a = 10;  ## by defult it is globale varible 

sub aa {
#		print"$a\n";
}
aa;

sub bb {
		my $b = 20;  ## private varible 	
#		print"$b\n";
}
bb;

#print"$a\n";





sub gg { 
		local $p = 100;
		print"$p\n";
		return $p;
}

$i = gg;
print"$i\n";



sub ww {
		local $u = 'srm';
		print"$u\n";
		return jj;
}

sub jj {
		print"$u\n";
}
$o =ww;

print"$o\n";



