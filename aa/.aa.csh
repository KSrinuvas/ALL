




: <<END

if ($?prompt) then
    set prompt = "% "
    set history = 20
    set cdpath = ( ˜ ˜/Projects ˜/Papers )
endif
alias h history
alias ll ls -l
alias print 'pr \!* | lpr'
set path = ( /bin /usr/bin /usr/ucb ˜/bin . )
% more .login
tset -I -Q
stty erase ^h intr ^c
setenv TERM vt100
biff y



END


echo "hello"

