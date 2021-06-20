require 'calculator'

describe Calculator do
  describe '#add' do
    it 'adds two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, 1)).to eq(2)
    end

    it 'returns the sum of two different arguments' do
      calculator = Calculator.new
      expect(calculator.add(10, 10)).to eq(20)
    end
  end

  describe '#factorial' do
    it 'returns 1 when given 0' do
      calculator = Calculator.new
      expect(calculator.factorial(0)).to eq(1)
    end

    it 'returns 120 when given 5' do
        calculator = Calculator.new
        expect(calculator.factorial(5)).to eq(120)
      end
  end
end
