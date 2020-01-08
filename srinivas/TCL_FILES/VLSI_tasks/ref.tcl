

set foo [dict create]
foreach first {a b c} {
    dict update foo $first subdict {
        foreach second {a b c} {
            foreach third {1 2 3} {
                dict lappend subdict "$first$second" "$first$second$third"
            }
        }
    }
}

#And output it:

dict for {key1 subdict} $foo {
    dict for {key2 list} $subdict {
        foreach elem $list {
            puts "$key1\t$key2\t$elem"
        }
    }
}





