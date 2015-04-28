a = 0
b = 20
c = b
print "start\n"
for num in  0..b do
	until a == num*2+1
		until b == 0
			print " "
			b -= 1
		end
		print "*"
		a += 1
	end
	print "\n"
	a = 0
	b = c - num -1
end
print "stop"
