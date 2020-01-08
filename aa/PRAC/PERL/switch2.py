#!/usr/bin/python3


def Switch_case(aa):
	switches = {
		2 : "this is value 2",
		5 : "this is value 5",
		0 : "this is value 0"
	}
	return switches.get(aa,"nothing")


if __name__ == "__main__":
	aa = 10;
	pp = Switch_case(aa)
	print (pp)

