module FileIO
  class FileWriter
    def self.write(filepath, content)
      begin
        data_file = File.open(filepath, "a+")
        print "Adding new content to file...\n"
        content.each do |item|
          data_file.puts(item)
        end
        print "Completed.\n"
      rescue
        print "File not found. The file " + filepath + "doesn't exist.\nPlease provide another file path:"
        filepath = gets
        filepath = filepath.chomp
        retry
      end
    end
  end
end
