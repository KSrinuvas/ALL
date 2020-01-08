### proc 



proc sum {a b c d} {
		set x [expr {$a + $b + $c +$d}]
		puts $x
}

sum 10 20 30 40
sum 1 2 3 4
sum 4 5 6 7


set aa 100
set bb 200
set cc 300
set dd 400

sum $aa $bb $cc $dd

	

