#!/usr/bin/perl



## code referance 


## referanceto the fun 


# Function definition
sub PrintHash {
   my (%hash) = @_;
   
   foreach $item (%hash) {
      print "Item : $item\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Create a reference to above function.
$cref = \&PrintHash;

# Function call using reference.
&$cref(%hash);


