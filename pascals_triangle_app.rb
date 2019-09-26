#!/usr/bin/env ruby

require_relative 'pascals_triangle'

num_of_rows = ARGV[0].to_i
input = ARGV[1]
app = PascalsTriangle.new(num_of_rows)
app.send("perform_#{input}")

# Note that the row index starts from 0. (5 row => rows[5] ; 5 rows => rows.first(5) => rows[0..4])

# Input:
# ruby pascals_triangle_app.rb 5 row
# Output:
# [1, 5, 10, 10, 5, 1]

# Input:
# ruby pascals_triangle_app.rb 5 rows
# Output:
# [1]
# [1, 1]
# [1, 2, 1]
# [1, 3, 3, 1]
# [1, 4, 6, 4, 1]
