require_relative 'pascals_triangle'
require 'test/unit'

class TestPascalsTriangle < Test::Unit::TestCase
  def test_nth_row
    num_of_row = [0, 1, 5]
    assert_equal([1], PascalsTriangle.new(num_of_row[0]).pascals_triangle_row(num_of_row[0]))
    assert_equal([1, 1], PascalsTriangle.new(num_of_row[1]).pascals_triangle_row(num_of_row[1]))
    assert_equal([1, 5, 10, 10, 5, 1], PascalsTriangle.new(num_of_row[2]).pascals_triangle_row(num_of_row[2]))
  end

  def test_nth_rows
    num_of_rows = 5
    assert_equal([[1],
                 [1, 1],
                 [1, 2, 1],
                 [1, 3, 3, 1],
                 [1, 4, 6, 4, 1]], PascalsTriangle.new(num_of_rows).pascals_triangle_rows(num_of_rows))
  end
end
