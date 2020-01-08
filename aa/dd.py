
import sys
ll = []

a = 0;
for line in sys.stdin:
	a +=1
	line = line.strip()
	ll.append(line)
	if (a == 4):
		break;
print(ll)






