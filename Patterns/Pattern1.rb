class Pattern1
	def initialize(number)
		@number = number
		@space = number-1
		@i = 1
	end
	
	def printPattern
		1.upto(@number) { |row|
			@space.times { print "  "  } 
			@space = @space-1

			(2*row-1).times {
				print @i
				print " "
				@i = @i+1

				if @i==10
					@i=0
				end
			}

			puts " "
		}
	end
end

pattern = Pattern1.new(5)
pattern.printPattern