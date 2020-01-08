import sys; 
try:  
	sys.go(); 
except: 
	print(sys.exc_info());
	print(sys.exc_info()[1]);


