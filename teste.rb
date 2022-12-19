expression = "2 1 2 + *"
operands = []
operators = ["+", "-", "*", "/"]
support_array = []

def perform_operation(a, b, operator)
  case operator
    when '+'
      return a.to_i + b.to_i
    when '-'
      return a.to_i - b.to_i
    when '*'
      return a.to_i * b.to_i
    when '/'
      return a.to_i / b.to_i
    else
      return 'invalid operator'
    end
end

expression.split(' ').each do |digit|
  unless operators.include?(digit)
    operands << digit
  else
    support_array = operands.pop(2)
    operands << perform_operation(support_array[0], support_array[1], digit)
  end
end
if operands.size == 1
  puts operands.first
elsif operands.size == 2
  puts operands[0].to_i + operands[1].to_i
end
puts operands.first

