#!/bin/csh

##-----------------------------
## userutilshell script 1 of 2
##-----------------------------


## Usage: userutil


while (1)
		echo "AVAILABLE OPTIONS"
		echo "**********************"
		echo "[1] Display today's date"
		echo "[2] How many people are logged on"
		echo "[3] How many user accounts exist"
		echo "Exit"
		echo "Enter your Choice [1-4]:"
		set answer = $<
		switch ($answer)
				case "1":
						echo `date` 
				    breaksw
				case "2":
						echo `users | wc -w` users are logged in 
			 	    breaksw
				case "3":
						echo `cat /etc/passwd | wc -l` users exists 
				    breaksw
				case "4":
						echo "BYE"
						break 
				    breaksw
				endsw
end
