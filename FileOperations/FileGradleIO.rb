class FileGradleIO

	def initialize(pathArray)
		0.upto(pathArray.length-1) do |i|
			@file = pathArray[i]
			@file_Read = File.read(@file)
			parseCollectedData("DEV", "1111", "SNAP")
		  end
	end

	def parseCollectedData(section, versionCode, versionName)

		@file_Read.sub!(/#{section}.*?versionCode( )*(=)*( )*(\S+)/m) { |ma| ma.sub!($4, versionCode) }
		@file_Read.sub!(/#{section}.*?versionName( )*(=)*( )*(\W)(\S+)(\S)/m) { |ma| ma.sub!($5, versionName) }
		File.open(@file,"w") {|file| file.write @file_Read}

	end
end

FileGradleIO.new(["/home/chetan/Downloads/build.gradle","/home/chetan/Downloads/build1.gradle"])