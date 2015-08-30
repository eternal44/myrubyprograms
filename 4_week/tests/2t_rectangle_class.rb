require 'minitest/autorun'
require_relative '../2e_rectangle_class.rb'

describe 'rectangle calculations' do

  before :all do
    @r = Rectangle.new(3,4)
  end

  it 'calculate area' do
    @r.area.must_equal 12
  end

  it 'calculate perimeters' do
    @r.perimeter.must_equal 14
  end
end
