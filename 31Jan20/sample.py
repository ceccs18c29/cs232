import pprint,re
fname = input()
failed = 0
studdic={}

def cgpacal(grades):
	point=0
	for i in grades:
		if("(O)" in i):
			point+=10
		elif("(A+)" in i):
			point+=9
		elif("(A)" in i):
                        point+=9
		elif("(B+)" in i):
                        point+=6
		elif("(B)" in i):
                        point+=6
		elif("(D)" or "(C)" in i):
                        point+=5
	return(point/float(len(grades)))


with open(fname,"r+") as f:
	for i in f:
		if(re.search("(F)", i)):
			failed+=1
		else:
			studdic[i.split()[0]]=cgpacal(i.split()[1:]) 

pprint.pprint(studdic)
print(failed)
