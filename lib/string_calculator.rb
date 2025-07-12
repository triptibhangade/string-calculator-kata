class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = extract_numbers(numbers)
    validate_no_negatives!(nums)

    nums.sum
  end

  private

  def extract_numbers(str)
    str.scan(/-?\d+/).map(&:to_i)
  end

  def validate_no_negatives!(nums)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
  end
end

# Example usage:
# calculator = StringCalculator.new
# puts calculator.add("1,2,3,4") # => 10
