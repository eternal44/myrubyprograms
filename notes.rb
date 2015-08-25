x = size of table
y = 
z = 


def generate_table(size, title, decoration)
result = construct_title
decorate(construct_table, result, decoration)
end

############

# sauce:  http://zetcode.com/lang/rubytutorial/io/
cool IO methods marked with double hashes and wrote "bookmarked" next to it

example: 1
print "Apple"
print "Apple\n"

example: 2
print "Orange"
print "Orange\n"

example: 3
$stdout.print "Ruby Language"
$stdout.puts "Phython language\n"

example: 4
p "Lemon"
p "Lemon"
not the same as
a = "something"
p a
puts a.inspect
puts "something".inspect
printf "There are %d apples \n", 3

putc 'K'
putc 0xA


example: 5
a = [1,2,3]
puts a
puts a.inspect
p a

example: 6
ios = IO.new STDOUT.fileno
ios.write "helo there\n"
ios.close

example: 7
fd = IO.sysopen "/dev/tty", "w"
ios = IO.new(fd, "w")
ios.puts "ZetCode"
ios.close

example: 8
inp = $stdin.read
puts inp

print "Enter your name: "
name = gets
puts "Hello #{name}"

print "Enter a string: "
inp = gets
puts "The string has #{inp.size} characters"

print "Enter a string: "
inp = gets.chomp
puts "The string has #{inp.size} characters"

example: 9
## bookmarked
f = File.open('output.txt', 'w')
f.puts "The Ruby Tutorial"
f.close

example: 10
File.open('langs', 'w') do |f|
  f.puts "Ruby"
  f.write "Java\n"
  f << "Python\n"
end

example: 11
## bookmarked
puts File.exists?('tempfile')
f = File.new 'tempfile', 'w'
puts File.mtime 'tempfile'
puts f.size

File.rename 'tempfile', 'tempfile2'
f.close

# example: 12
f = File.open("stones")
while line = f.gets do
  puts line
end

# example: 13 similar to above
fname = 'stones'
File.readlines(fname).each do |line|
  puts line
end

# example: 14
data = system 'ls'
puts data


#
if __FILE__  == $PROGRAM_NAME
  [-40, 0, 32, 98, 98.6, 100, 212].each do |_F|
    puts("%.2f in F degrees in celcius is %.2f." % [to_celcius(_F), _F])
  end
end

