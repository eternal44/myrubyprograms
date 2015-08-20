# This method generates a multiplication table.

class Table
  def generate_table(
    table_size,
    title="Times table to #{table_size}",
    decoration = ''
  )
    result = ""
    border = 0
    length = ""
    table = multiplication_table(table_size)
    length = table.lines[-1].size - 1
    border = decoration.to_s * (length + 1) + "\n"

    # table layout options
    if title && length > 16
      header = " " * (length / 2 - 8) + title + "\n"
      result << header
    elsif length < 16
      header = title + "\n"
      result << header
    else
      header = "\n"
    end

    result << border unless decoration.empty?
    result << table
    result << border unless decoration.empty?
    result
  end

  private

  def multiplication_table(table_size)
    table = ''
    1.upto(table_size) do |i|
      row = ""
      1.upto(table_size) do |j|
        row << build_row(table_size, [i, j])
      end
      table << row << "\n"
    end
    table
  end

  def build_row(table_size, multiplands)
    i, j = multiplands
    # i = numbers[0]
    # j = numbers[1]
    " " << spacing(product(i, j)[:length], spaces(table_size)) <<
    product(i, j)[:value].to_s
  end

  def spaces(integer)
    integer.to_s.size
  end
  def product(i, j)
    { value: i * j, length: (i * j).to_s.length }
  end

  def spacing(num_size, col_size)
    num_size < col_size ?
      " " * (col_size - num_size) : ""

  end
end

if __FILE__ == $PROGRAM_NAME
  #########
  # TEST  #
  #########

  #########
  # INPUT #
  #########

  # number input
  puts "Enter a number you want to generate a times table for"
  num = gets.to_i
  puts "Invalid entry" unless num.is_a?(Integer)

  # header input
  puts "Include Header? Enter 'y' or 'n'."
  header = gets.chomp

  if header != "y" && header != "n"
    puts "Invalid entry.  Use 'y' or 'n'."
    exit
  end

  # border input
  puts "Include border?  Enter 'y' or 'n'."
  border = gets.chomp

  if border != "y" && border != "n"
    puts "Invalid entry.  Use 'y' or 'n'."
    exit
  end

  ##############
  # RUN SCRIPT #
  ##############

  generate_table(num, header, border)
end
## This is a pass / fail test.  To get get graded test just load it
## in irb and run
# doctest: Acceptance test & with customized decoration
# >> Table.new().generate_table(3,"", "+")
# >> standard = "\n+++++++\n 1 2 3\n 2 4 6\n 3 6 9\n+++++++\n"
# >> Table.new().generate_table(3,"", "+") == standard
# => true
# doctest: Acceptance test with title and decoration
# >> standard = "Times table to 3\n 1 2 3\n 2 4 6\n 3 6 9\n"
# >> Table.new().generate_table(3) == standard
# => true
# doctest: Acceptance test without decoration
# >> standard = "\n 1 2 3\n 2 4 6\n 3 6 9\n"
# >> Table.new().generate_table(3, '', '') == standard
# => true
#
