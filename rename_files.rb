# Goal
# Rename files in the specified path. Rename Randomly

require 'colorize'
require 'securerandom'

rename_directory = "C:\\Users\\UserName\\Downloads\\rename\\"
files_in_directory = Dir.entries(rename_directory) # directory where renaming will take place


puts 'Renaming files... '.colorize(:color => :light_yellow, :mode => :bold)
puts

Dir.glob(rename_directory.gsub('\\', '/') + "*.*").sort.each do |file|
  full_file_path = file
  random_name = SecureRandom.hex
  new_file = File.rename(full_file_path, rename_directory + random_name + File.extname(file))
end

puts 'Finished renaming'.colorize(:color => :light_green, :mode => :bold)
