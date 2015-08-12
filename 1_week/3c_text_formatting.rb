# This method generates a multiplication table.
class Table
  def generate_table(x, y='y', z='y')
    # set up parameters for table
    arr2 = arr1 = (1..x).to_a 
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

        if num_size < col_size
          spacing = " " * (col_size - num_size) 
        else
          spacing = ""
        end
        row << " " << spacing << (y*z).to_s
      end
      table << row << "\n"
      length = row.size
      border = " " + "=" * length
    end

    # table layout options
    if y == "y" && length > 16 
      header = " " * (length / 2 - 8) + " Times Table to #{x}"
      puts header
    elsif length < 16
      header = " Times Table to #{x}"
      puts header
    else
      header = ""
    end

    puts border if z == "y"
    puts table
  end
end

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
