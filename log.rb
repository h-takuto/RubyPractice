#!/usr/bin/ruby


def usage()
	puts "\nusage : moniter.rb filename string"
	puts "          filenameで指定されたファイルをstringで監視し、マッチすれば終了します"
end

if (ARGV[0].nil? || ARGV[1].nil?)
	puts "引数が足りません"
	usage()
	exit!
else
	begin
		filename = ARGV[0]
		file = File.open(filename, "r")
		filesize = File.size?(filename)
		if (filesize == nil)
		fllesize = 0
		end
	rescue => e
		puts e
		puts filename + "ファイルを開くことができません"
		usage
		exit!
	end
	str = ARGV[1]
	puts "ファイル" + filename + "を文字列" + str + "で監視します"
end

#最終行まで移動
file.seek(0,IO::SEEK_END)

begin
	#読み込みループ
	while (true) do
		line = file.gets()
		if (! line.nil?)
			if( /#{str}/ =~ $_ )
				puts "*** MATCH : " + $_
				exit
			end
		else
			sleep(0.5)

			if (! File.exist?(filename))
				puts "ファイルが削除されました"
				file.close()
				exit!
			end
			if ($DEBUG)
				puts "oldsize : "+ filesize.to_s + " newsize : " + newFilesize.to_s
				if(newFilesize < filesize)
					puts "ファイルが切り詰められました。新しいファイルを読み込みます"
					file.close()
					begin
						file = File.open(filename)
					rescue => e
						puts e
						puts "ファイルを再オープンできません"
						exit!
					end
					file.seek(0.IO::SEEK_END)
				end
				filesize = newFilesize
			end
		end
	end
ensure
		if (! file.closed?)
			file.close()
		end
		exit!
end
