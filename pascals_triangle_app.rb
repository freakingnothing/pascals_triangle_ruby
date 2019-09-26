#!/usr/bin/env ruby

require_relative 'pascals_triangle'

num_of_rows = ARGV[0].to_i
input = ARGV[1]
app = PascalsTriangle.new(num_of_rows)
app.send("perform_#{input}")

