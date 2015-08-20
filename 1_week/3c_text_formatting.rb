# This method generates a multiplication table.

class Table
  def generate_table(
    table_size,
    title="Times table to #{table_size}",
    decoration = '')
    result = ""
    # set up parameters for table
    arr2 = arr1 = (1..table_size).to_a
    col_size = (arr2[-1] * arr2[-1]).to_s.size

    table = ""
    border = 0
    length = ""

    # generating table
    arr1.each do |y|
      row = ""
      arr2.each do |z|
        product = y * z
        num_size = product.to_s.size

        row << " " << spacing(num_size, col_size) << (y*z).to_s
      end

      table << row << "\n"
      length = row.size
      border = decoration.to_s * (length + 1) + "\n"
    end

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
