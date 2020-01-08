#!/usr/bin/perl
sub aaa {
        local $age = $_[0];
        local $name = $_[1];
        print" name is $name age is $age\n";
        bbb();
}
     
sub bbb {
   
        print" name is $name age is $age\n";
}
aaa(25,"srinu");

