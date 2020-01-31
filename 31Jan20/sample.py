import pprint,re
fname = input()
failed = 0
studdic={}

def cgpacal(grades):
	print(grades)


with open(fname,"r+") as f:
	for i in f:
		if(re.search("(F)", i)):
			failed+=1
		else:
			studdic[i.split()[0]]=cgpacal(i.split()[1:]) 

print(failed)
pprint.pprint(studdic)
