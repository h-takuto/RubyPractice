arr = [0, 10, 20, 30, 40]

for i in 0..4 do
	arr[0] += arr[i]
	print "arr[", i.to_s, "]:", arr[i], "\n"
end
print "sum:",arr[0]
