# A simple ruby program to demonstrate file I/O.
# To run, execute $ruby main.rb

require_relative "file_reader"
require_relative "file_writer"

FileIO::FileReader.read("temp2.txt")
new_content = ["item 6","item 7","item 8","item 9","item 10"]
FileIO::FileWriter.write("temp.txt", new_content)
