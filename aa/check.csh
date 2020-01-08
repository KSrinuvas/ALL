#!/bin/csh

if ($?prompt) then
    set prompt = "% "
    set history = 20
    set cdpath = ( ˜ ˜/Projects ˜/Papers )
endif
alias hh history
alias ll ls -l
#alias print 'pr \!* | lpr'
