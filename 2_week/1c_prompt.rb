# sauce:  http://zetcode.com/lang/rubytutorial/io/
# cool IO methods marked with double hashes and wrote "bookmarked" next to it

# ex: 1
# print "Apple"
# print "Apple\n"

# ex: 2
# print "Orange"
# print "Orange\n"

# ex: 3
# $stdout.print "Ruby Language"
# $stdout.puts "Phython language\n"

# ex: 4
# p "Lemon"
# p "Lemon"

# printf "There are %d apples \n", 3

# putc 'K'
# putc 0xA
#

# ex: 5
# a = [1,2,3]
# puts a
# puts a.inspect
# p a

# ex: 6
# ios = IO.new STDOUT.fileno
# ios.write "helo there\n"
# ios.close

# ex: 7
# fd = IO.sysopen "/dev/tty", "w"
# ios = IO.new(fd, "w")
# ios.puts "ZetCode"
# ios.close

# ex: 8
# inp = $stdin.read
# puts inp

# print "Enter your name: "
# name = gets
# puts "Hello #{name}"

# print "Enter a string: "
# inp = gets
# puts "The string has #{inp.size} characters"

# print "Enter a string: "
# inp = gets.chomp
# puts "The string has #{inp.size} characters"

# ex: 9
# ## bookmarked
# f = File.open('output.txt', 'w')
# f.puts "The Ruby Tutorial"
# f.close

# ex: 10
# File.open('langs', 'w') do |f|
#   f.puts "Ruby"
#   f.write "Java\n"
#   f << "Python\n"
# end

# ex: 11
# ## bookmarked
# puts File.exists?('tempfile')
# f = File.new 'tempfile', 'w'
# puts File.mtime 'tempfile'
# puts f.size

# File.rename 'tempfile', 'tempfile2'
# f.close

# # ex: 12
# f = File.open("stones")
# while line = f.gets do
#   puts line
# end

# # ex: 13 similar to above
# fname = 'stones'
# File.readlines(fname).each do |line|
#   puts line
# end

# # ex: 14
# data = system 'ls'
# puts data

require 'readline'
a = Readline.readline('>>')

p a

