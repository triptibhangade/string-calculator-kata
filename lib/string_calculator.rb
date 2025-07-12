class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    nums = numbers.scan(/-?\d+/).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(",")}"
    end

    nums.sum
  end
end

# string_calculator_object = StringCalculator.new
# puts string_calculator_object.add("1,2,3,4") # => 10