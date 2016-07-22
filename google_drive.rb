# Load the bundled environment
require "rubygems"
require "bundler/setup"

# Require gems specified in the Gemfile
require "google_drive"

# Creates a session. This will prompt the credential via command line for the
# first time and save it to config.json file for later usages.
session = GoogleDrive.saved_session("config.json")

Gets list of remote files.

puts "------- files of you Drive ----------"
session.files.each do |file|
  puts file.title
end
puts "-----------------------------"


create = Time.now
puts create
File.open("hello.txt", 'w') { |file| file.write("your text #{create}") }

# Uploads a local file.
session.upload_from_file("hello.txt", "hello.txt", convert: false)

# Downloads to a local file.
file = session.file_by_title("hello.txt")

puts "------- file ----------"
puts file.inspect
puts "-----------------------------"
file.download_to_file("hello.txt")

puts File.read("hello.txt")

update = Time.now
File.open("hello.txt", 'w') { |file| file.write("your text updated is #{update}") }

# Updates content of the remote file.
file.update_from_file("hello.txt")

puts update
