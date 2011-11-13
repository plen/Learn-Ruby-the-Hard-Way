# copy from 1 file, write to another file

from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

indata = File.open(from_file).read() #do i have to close the file? why not?

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'a')
output.write(indata)

puts "Alright, all done."

output.close()