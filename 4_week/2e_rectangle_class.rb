class Rectangle
  def initialize(width, length)
    @width = width
    @length = length
  end

  def area
    @width * @length
  end

  def perimeter
    (@width + @length) * 2
  end
end
