# doctest: try things out
# >> tree = FunTimes.new
# >> tree.first_thing
# => 2
# >> tree.alter
# => 4
class FunTimes
  def initialize
    @conv = 0
  end
  
  def first_thing
    @conv += 2
  end

  def alter
    @conv += 2
  end
end
