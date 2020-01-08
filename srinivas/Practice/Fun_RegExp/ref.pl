

## lookahead

$a = "cool cake and cool summar and cool winter";

$a =~ s/cool(?! summar)/hot/g;

print"$a\n";



$b = "cake cool and summar cool and winter cool";


$b =~ s/(?<!cake )cool/hot/g;

print"$b\n"; 
