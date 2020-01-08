#!/bin/csh


echo "list of cmd arg : $*";

echo "first cmd : $1";
echo "file name : $0";


echo "second cmd : ${2}";

set a = $#argv;

echo "no of arguments : $a";



@ ll = 0

foreach aa ($*)
#	echo $aa;
	@ ll = $ll + 1;
end

echo "lenth is : $ll";





set i = 0;


@ sum = 0;
while ($i < 5)
#	echo $i;
	@ sum = $sum + $i;
	@ i++;
end


#echo $sum



## while dec 

@ no = 5


while ($no > 0)
	echo $no;
	@ no--;
end


set arr = (1 2 3 4 50 6 7 8 9 10 11 12)

## even no 

echo $arr;
@ x = 0;
foreach oo ($arr)
	#echo $oo
end


if ($arr[5] == 50) then 
	echo $arr[5];
endif



echo ${argv[*]}




## even no

foreach n ($arr) 
	@ x = $n % 2
	if ($x == 0) then
		echo $n
	endif
end


## ood no

@ ii = 1
while ($ii < $#arr)	
	@ y = $arr[$ii] % 2
	if ($y != 0) then
		echo $arr[$ii]
	endif
	@ ii++	
end




echo "Enter the factorial of X ";


@ num = $<;
set n1 = $num
@ fact = 1
while ($num > 0) 
	echo $num
	@ fact = $fact * $num
	@ num--
end

echo "factorial of $n1 is $fact";





## table form 1 to 10

echo "which table you want enter the table no : ";
set ta = $<;

@ o = 1
while ($o < 11)
	@ bb = $ta * $o
	echo "$ta * $o = $bb"
	#echo $o
	@ o++
end





































