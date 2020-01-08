
if 0 {
 
set mydict [dict create a 1 b 2 c 3 d 4]
dict get $mydict b ; # returns 2
set key c
set myval [dict get $mydict $key]
puts $myval
# remove a value
dict unset mydict b
# set a new value
dict set mydict e 5

}



set mydict [dict create a 1 b 2 c 3 d 4]


set myval [dict get $mydict d]


set hello [dict create a 10 b 20 c 30 d 40]


puts [dict get $hello d]

## remove the dict key d in hello

dict unset hello d

dict set hello d 100
puts [dict get $hello d]

## set new value in dict 




## set data is the dict 
set data [dict create name ss age 20 salary 25k]


foreach key [dict keys $data]	{
		puts "$key => [dict get $data $key]"
}







