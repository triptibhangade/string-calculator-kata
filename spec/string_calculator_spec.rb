require 'string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      expect(calc.add("")).to eq(0)
    end

    it 'returns the number itself when one number is passed' do
      expect(StringCalculator.new.add("1")).to eq(1)
    end

    it 'returns sum of two comma-separated numbers' do
      expect(StringCalculator.new.add("1,5")).to eq(6)
    end

    it 'returns sum of multiple comma-separated numbers' do
      expect(StringCalculator.new.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters along with commas' do
      expect(StringCalculator.new.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters like ;' do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end
  end
end
