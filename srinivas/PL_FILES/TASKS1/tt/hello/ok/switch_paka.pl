#!/usr/bin/perl
#Listing 20.4. A program that switches between pages.


package pack1;

sub mysub {

        $var1 = 1;
				print"$var1\n";
        package pack2;

        $var1 = 2;
				print"$var1\n";
				package pack1;
				print"$var1\n";
}
mysub()

