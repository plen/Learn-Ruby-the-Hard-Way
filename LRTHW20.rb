# iteratively print line by line, IO library

input_file = ARGV[0]

# def print_all(f)
#   puts f.read()
# end

def rewind(f)
  # in the line below, it makes no diff if it is IO.SEEK_SET or IO::SEEK_SET
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

# puts "First let's print the whole file:"
# puts # a blank line
# 
# print_all(current_file)
# 
# puts "Now let's rewind, kind of like a tape."
# 
# rewind(current_file)

current_line = 1

begin
  while current_file.readline() != nil
    print_a_line(current_line, current_file)
    current_line +=1
  end
rescue EOFError
  current_file.close
end