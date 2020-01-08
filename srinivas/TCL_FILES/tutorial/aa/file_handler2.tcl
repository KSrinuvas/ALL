set fp [open "input.txt" w+]
puts $fp "hello\ntest"
close $fp;

set fh [open "input.txt" r]

while { [gets $fh line] >= 0} {
		puts $line
}


