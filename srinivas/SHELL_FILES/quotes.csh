#!/bin/csh

##---------------------------
## Double quotes 
##---------------------------

echo "* isn't a wildcard inside quotes"
echo "my path is $PATH"



set a = 10

echo "the value of a is $a"
echo 'the value of a is $a'  # single quotes is does not allow the interpolation




##---------------------------
#### single quotes 
##---------------------------

echo '*'

echo '$cwd'


echo '`echo hello`'


echo 'hi there !'





##---------------------------
## backslash
##---------------------------


set aa = 100

echo $aa

echo \$aa value is $aa


echo \$ is a dollar sign



echo \\ is a backslash



