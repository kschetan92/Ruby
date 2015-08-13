ary = [10, 2, 4, 6, 7, 1]
sum = 0
ary.each { |e| 
	puts "square of #{e} is #{e*e}"
	e = e*e
	sum = sum+e

}

puts "the sum of elements in array after squaring is #{sum}"