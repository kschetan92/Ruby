class Pattern2
	def initialize(number)
		@number = number
		@space = number-1
		@i = 0
	end
	
	def printPattern
		1.upto(@number) { |row|
			@space.times { print "  "  } 
			@space = @space-1

			value = row

			(row).times {

				print value
				print " "
				value = value+1

				if value==10
					value=0
				end
			}

			if row>1
				value = row+@i
				@i=@i+1

				(row-1).times{

						if value>=10
							print value-10 
							print " "
							value = value-1
						else
							print value
							print " "
							value = value-1
						end

				}
			end
			puts " "
		}
	end
end

pattern = Pattern2.new(7)
pattern.printPattern