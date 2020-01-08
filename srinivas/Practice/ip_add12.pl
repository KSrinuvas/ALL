#!/usr/bin/perl -w
use strict;



## to count the no of mail and ip address in a file 
my $ip = 0;
my $mail = 0;
while (my $line = <DATA>)	{
		chomp($line);
		$ip++ if($line =~ /\d+\.\d+\.\d+\.\d+/);
		$mail++ if($line =~ /\w+\@\w+\.com/);
}

print"NO of ip address's in a file is : $ip\n";
print"NO of mail's in a file is : $mail\n";







__END__
my ip address is 168.63.12.01 and my mail id is ss123@gmail.com 
my ip address is 152.44.14.02 
my mail id is yy123@gmail.com and ip address is 182.123.42.06
my mail id is gg123@gmail.com and ip address is 172.132.52.16
my ip address is 122.53.16.03 and my mail id is bb123@gmail.com
my ip address is 155.63.55.05 and my mail id is cc123@gmail.com
my ip address is 164.53.42.09 and my mail id is dd123@gmail.com
my ip address is 172.83.33.08 and my mail id is zz123@gmail.com
my mail id is mm123@gmail.com
my mail id is ll123@gmail.com

