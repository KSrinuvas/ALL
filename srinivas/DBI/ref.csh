#!/bin/csh



set ss = $0;

echo $ss

set c = $#argv;

echo $c


echo "all postional arguments : $*";



set f1 = $1;
set f2 = $2;

echo "first : $f1";

echo "second : $f2";



set list = ('hello' 'hi')

foreach ah ($list) 
		echo $ah
end

