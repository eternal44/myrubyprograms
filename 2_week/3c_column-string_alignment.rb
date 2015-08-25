# prints line numbers before each line & aligns the ":"
class ListGenerator
  def column_alignment(lines)
    lines = lines.split("\n")
    lines.map.with_index(1) do |output, line_number|
      "Line #{number_spacing(lines, line_number)}#{line_number}: "\
      "#{output}"
    end
  end

  private

  def number_spacing(lines, line_number)
    max_line_digits = lines.count.to_s.size
    ' ' * (max_line_digits - line_number.to_s.size)
  end
end

if __FILE__ == $PROGRAM_NAME
  lines = 'I think the challenge states to split a string. Which may
be programmers speech, but should probably have been presented as
split a text.

So you would be missing a step here, I think.

Your names are right for the code, I think. But that is because you
read into being handed a string.

Think about wanting to present a book with numbered lines.

When I pulled your repository and ran the program, it looks like a '\
  'list of words, rather than a line.'

  puts ListGenerator.new.column_alignment(lines)
end
