#!/usr/bin/python3

dd = dict(zip((1,2,3,4),('a','b','b','d')));

print (dd)



kk = list(dd.keys())
vv = list(dd.values())


print (type(kk))

pp = dict(zip(vv,kk))

print (pp)


ll = len(kk)

print (ll)
nn = {}
for i in range(ll):
    nn[vv[i]] = kk[i]

print (nn)
