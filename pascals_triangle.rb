class PascalsTriangle
  def initialize(num_of_rows)
    @num_of_rows = num_of_rows
  end

  # Build Pascal's triangle
  def pascals_triangle_rows(num, row = [1])
    Enumerator.new do |e|
      loop do
        e << row
        row = next_row(row)
      end
    end.take(num)
    .each {|row| p row}
  end

  # Build next row
  def next_row(row)
    ([0] + row).zip(row + [0]).map {|a, b| a + b}
  end

  # Build Nth row
  def pascals_triangle_row(num, row = [1])
    0.upto(num - 1) {|i| row.push(row[i] * (num - i)/ (i + 1))}
    p row
  end

  # Perform
  ["row", "rows"].each do |method|
    define_method "perform_#{method}" do
      self.send "pascals_triangle_#{method}", @num_of_rows
    end
  end

  # def method_missing(method, *args, &block)
  #   return super method, *args, &block unless method.to_s =~ /^perform_\w+/
  #   self.class.send(:define_method, method) do
  #     self.send "pascals_triangle_#{method.to_s.gsub(/^perform_/,'')}", @num_of_rows
  #   end
  #   self.send method, *args, &block
  # end
end


