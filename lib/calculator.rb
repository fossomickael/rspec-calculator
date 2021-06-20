class Calculator
  def add(a, b)
    a + b
  end

  def factorial(num)
    (1..num).inject(:*) || 1
  end
end
