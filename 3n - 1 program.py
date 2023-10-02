i,j=map(int,input().split())
# mydict={}
fans=[]
for k in range(i,j+1):
    n=k
    c=1
    while n!=1:
        if n%2==0:
            n=n//2
            c+=1
        else:
            n=(n*3)+1
            c += 1
    fans.append(c)
    # mydict[k]=len(ans)
#print(i,j,max(mydict.values()))
print(i,j,max(fans))
# print(mydict)