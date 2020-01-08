#!/usr/bin/python3


def Flages(*hh):
    aa = 8
    falg = 0
    for i in hh:
      # print (i)
        if (i == 8):
            flag = 1
            break
        else:
            flag = 0
    return flag  








if __name__ == "__main__":
    aa = Flages(1,2,3,4,5,6,8,9,8,9,26)
    print ("print flag returns ==> {} ".format(aa))
