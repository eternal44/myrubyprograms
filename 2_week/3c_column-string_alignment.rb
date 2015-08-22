# prints line numbers before each line & aligns the ":"

class ListGenerator
  def column_alignment(lines)
    lines.map.with_index(1) do |output, line_number|
      "Line #{number_spacing(lines, line_number)}#{line_number}:"\ # rewrite
      "#{line_spacing(output, lines)}#{output}"                    # rewrite

    end
  end


  private

    def number_spacing(lines, line_number)
      max_line_digits = lines.count.to_s.size
      " " *  (max_line_digits - line_number.to_s.size)
    end

    def line_spacing(output, lines)
      longest_value = lines.group_by(&:size).max.first
      " " * (longest_value - output.size + 1)
    end
end

if __FILE__ == $PROGRAM_NAME
  lines = []
  5.times do
    lines <<  ["big", "ho", "big", "elephant", "z"]
  end
  lines = lines.flatten

  puts ListGenerator.new().column_alignment(lines)
end
