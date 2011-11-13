# more elegant version of read 1 file, write to another

from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file} using #{$0}"

File.open(to_file, 'a').write(File.open(from_file).read())

puts "Done."

#file doesn't need to be closed it seems because an operation is performed but
#no memory is allocated?