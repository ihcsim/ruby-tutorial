module FileIO
  class FileReader
    def self.read(filepath)
      begin
        File.open(filepath) do |file|
          print "Printing data file content...\n"
          while line = file.gets
            puts line
          end
          print "Completed.\n"
        end
      rescue
        print "File not found. The file " + filepath + " doesn't exist.\nPlease provide another filepath:"
        filepath = gets
        filepath = filepath.chomp
        retry
      end
    end
  end
end
