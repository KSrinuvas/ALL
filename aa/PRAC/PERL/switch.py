#!/usr/bin/python3


def SwitchExample(argument):
    switcher = {
        0: " This is Case Zero ",
        1: " This is Case One ",
        2: " This is Case Two ",
    }
    return switcher.get(argument, "nothing")


if __name__ == "__main__":
    #argument = 1
    argument = int(input())
    print (SwitchExample(argument))
