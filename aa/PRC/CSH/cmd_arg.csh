#!/bin/csh

## cmd args

echo $0;

echo $#argv;

echo "first aarg : $1"


if ($1 == 5) then 
	echo "first value is 5";
else if ($1 == 10) then
	echo "first value is 10";
else 
	echo "not math any cnd";
endif




repeat 10 echo "hello"
@ len = 0
@ sum = 0
foreach word ($*) 
	echo $word
	@ sum = $sum + $word 
	@ len = $len + 1
end

echo $sum



if ($#argv == $len) then
	echo "true";
else
	echo "false";
endif





set ll = (1 2 3 4 5 6 7 8 9 10 11);


## avg value 
@ ss = 0;
@ vv = 0;

foreach pp ($ll)
	@ ss = $ss + $pp;
	@ vv = $vv + 1;
	#echo $pp;
end

@ avg = $ss / $vv;


set name = ('ss' 'yy' 'pp' 'qq');

set lt = ${#name}
echo $avg;

@ i = 0;
while ($i < ${#name})
	#echo $i
	@ i = $i + 1
	echo $name[$i]
end






