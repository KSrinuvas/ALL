#!/usr/bin/tclsh


array set data [list                                         \
    [list foo x] ecks    [list foo y] why    [list foo z] zed\
    [list bar x] ECKS    [list bar y] WHY    [list bar z] ZED\
]

proc array_dimnames {array_var dim_index} {
    upvar 1 $array_var array
    set result [list]
    foreach name [lsort -unique -index $dim_index [array names array]] {
        lappend result [lindex $name $dim_index]
    }
    return $result
}

array_dimnames data 0
array_dimnames data 1

