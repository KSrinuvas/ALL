#!/usr/bin/python3


def Switch_case (argument):
	switches = {
		0 : "this is case 0\n",
		1 : "this is case 1\n",
		2 : "this is case 2\n",
		3 : "this is case 3\n"
	}
	return switch.get(argument,"nothing")

if __name__ == "__main__":
	argument = int(input("Enter the value check the case : "))
	aa = Switch_case(argument)
	print (aa);
