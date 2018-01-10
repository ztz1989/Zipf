#!/usr/bin/lua

N = 100
total = 5e9
theta = 0.5
src = {}

sum = 0
for i=1,N do
	sum = sum + 1.0/math.pow(i, 1-theta)
end

c = 1.0/sum

for i=1,N do 
	src[i] = math.floor(total * c/math.pow(i+1,1-theta))
	print(i..' '..src[i]) 
end
