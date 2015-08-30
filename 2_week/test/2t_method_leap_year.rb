require 'minitest/autorun'
require_relative '../3e_method_leap_year'

describe 'leap years for century years' do
  it 'is a leap year for centuries divisible by 400' do
    [1600, 2000, 2400].each do |y|
      leap_year?(y).must_equal true
    end
  end

  it 'standard centuries' do
    [300, 1000, 1500].each do|y|
      leap_year?(y).must_equal false
    end
  end

  it 'standard leap years' do
    [1904, 4, 2004].each do|y|
      leap_year?(y).must_equal true
    end
  end

  it 'is not a leap year' do
    [1993, 1997, 17].each do |y|
      leap_year?(y).wont_equal true
    end
  end
end
