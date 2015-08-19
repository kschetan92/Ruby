
class FileGradleIO

	def initialize(path_array)
		0.upto(path_array.length-1) do |i|
			@file = path_array[i]
			@file_read = File.read(@file)
			parse_collected_data("PROD", "1.2.3", "3.1.4")
		  end
	end

	def parse_collected_data(section, versionCode, versionName)

		mch_VCode = /#{section}.*?versionCode( )*(=)*( )*(\S+)/m
		mch_VName = /#{section}.*?versionName( )*(=)*( )*(\W)(\S+)(\S)/m

		mch_VCode.match(@file_read)
		replaced = @file_read.gsub("#{$4}", versionCode)
		File.open(@file,"w") {|file| file.write replaced}

		mch_VName.match(@file_read)
		replaced = @file_read.gsub("#{$5}", versionName)
		File.open(@file,"w") {|file| file.write replaced}

	end
end

FileGradleIO.new(["/home/chetan/Downloads/build.gradle","/home/chetan/Downloads/build1.gradle"])