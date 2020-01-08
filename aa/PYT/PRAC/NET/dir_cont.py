#!/usr/bin/python3


def print_directory_contents(sPath):
    import os                                       
    for sChild in os.listdir(sPath):                
        print (sChild)
        sChildPath = os.path.join(sPath,sChild)
        if os.path.isdir(sChildPath):
            print_directory_contents(sChildPath)
        else:
           #print(sChildPath)
            pass














if __name__ == "__main__":
    print_directory_contents('/home/srm/srinivas/PL_FILES')
