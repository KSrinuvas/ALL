alias wh which
#set prompt = "[] : "
alias h history


setenv LIB_PATH /home/srm/MODULES;
setenv PATH $PATH\:/home/srm\:/home/srm/aa:${LIB_PATH}

#ls --color=auto

alias c clear

alias l ls

alias ls ls --color=auto

#set prompt = "\n%{\033[38;5;190m%}%T %m:%~>%{\033[0m%} "
set prompt = "%{\033[38;5;190m%}%T %m:%~>%{\033[0m%} "

set history = 8000
set savehist = (8000 merge)



#eval `dircolors -c ~/.dircolors`
eval `dircolors -c ~/.dircolors`


set hello = "hi"




# All variables set with setenv command are automatically exported to subshell. 

setenv PERLDATA /home/srm/srinivas/PL_FILES 

setenv PYTHONDATA /home/srm/srinivas/PY_FILES

setenv TCLDATA /home/srm/srinuvas/TCL_FILES

setenv READFILE /home/srm/Readfiles; 

## to set the PERLDATA env varible to the path

setenv PATH $PATH\:${PERLDATA}\:${PYTHONDATA}\:${TCLDATA}
#setenv PATH $PATH\:${PERLDATA}\:${PYTHONDATA}
#setenv PATH $PATH\:${PYTHONDATA}\:${TCLDATA}


#All csh variables set to with set command are NOT automatically exported to subshell.

set var1 = "hello"



## file permisions using alias command

alias pr chmod 755  


alias ap chmod a+rwx


alias py python3

alias pl perl

alias t tcl


#setenv HOST SRMHP1

