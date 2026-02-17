#.write a program to calculate the percentage of student based on marks of any 5 subject

s1 = float(input("enter marks of english:"))
s2 = float(input("enter marks of math:"))
s3 = float(input("enter marks of physics:"))
s4 = float(input("enter marks of chemistry:"))
s5 = float(input("enter marks of biology:"))
total = s1+s2+s3+s4+s5
percentage =(total/500)*100
print("total:",total)
print("percentage:",percentage,"%")