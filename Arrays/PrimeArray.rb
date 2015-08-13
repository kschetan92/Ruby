a = [10, 2, 4, 6, 7, 1, 13]
a.each { |x|
	k = 1
	(x/2).times {
		res=x%k
		if res==0 
			k=k+1
		end
	}
if k==2
	puts "#{x} is a prime number"
else
	puts "#{x} is not a prime number"
end
 }