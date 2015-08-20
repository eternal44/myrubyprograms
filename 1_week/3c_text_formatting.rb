# This method generates a multiplication table.

class Table
  def generate_table(
    table_size,
    title = "Times table to #{table_size}\n",
    decoration = ''
  )
    result = ''
    table = multiplication_table(table_size)
    length = table.lines[-1].size
    border = decoration.to_s * (length) + "\n"

    result << title unless decorate? title
    result << border unless decorate? decoration
    result << table
    result << border unless decorate? decoration
    result
  end


  private

  def decorate?(decoration)
    [ :nil? , :empty?, :blank?].any? do |method_name|
      decoration.respond_to?(method_name) && decoration.send(method_name)
    end
  end

  def multiplication_table(table_size)
    table = ''
    1.upto(table_size) do |i|
      row = ''
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
    ' ' << spacing(product(i, j)[:length], spaces(table_size)) <<
    product(i, j)[:value].to_s
  end

  def spaces(integer)
    integer.to_s.size
  end

  def product(i, j)
    { value: i * j, length: (i * j).to_s.length }
  end

  def spacing(num_size, col_size)
    num_size < col_size ? ' ' * (col_size - num_size) : ''
  end
end

if __FILE__ == $PROGRAM_NAME
  #########
  # INPUT #
  #########

  # number input
  puts 'Enter a number you want to generate a times table for'
  num = gets.to_i
  puts 'Invalid entry' unless num.is_a?(Integer)

  # header input
  puts "Include title? Enter 'y' or 'n'."
  title = gets.chomp

  # border input
  puts "Include border?  Use whatever single character you like"
  border = gets.chomp

  ##############
  # RUN SCRIPT #
  ##############

  puts Table.new().generate_table(num, title, border)
end
## This is a pass / fail test.  To get get graded test just load it
## in irb and run
# doctest: Acceptance test & with customized decoration
# >> standard = "+++++++\n 1 2 3\n 2 4 6\n 3 6 9\n+++++++\n"
# >> Table.new().generate_table(3, "", "+") == standard
# => true
# doctest: Acceptance test with title and decoration
# >> standard = "Times table to 3\n 1 2 3\n 2 4 6\n 3 6 9\n"
# >> Table.new().generate_table(3) == standard
# => true
# doctest: Acceptance test without decoration
# >> standard = " 1 2 3\n 2 4 6\n 3 6 9\n"
# >> Table.new().generate_table(3, '', '') == standard
# => true
