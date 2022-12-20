require_relative '../constants/operators'

class RpnCalculator
  def initialize(expression)
    @expression = expression
    @operands = []
    @support_array = []
  end

  def call
    sanitize_expression
    iterate_expression
    result
  end

  private

  def sanitize_expression
    @expression.tr!("[A-Za-z]", '')
  end

  def iterate_expression
    @expression.split(' ').each do |digit|
      unless OPERATORS.include?(digit)
        @operands << digit
      else
        @support_array = @operands.pop(2)
        @operands << perform_operation(@support_array[0], @support_array[1], digit)
      end
    end
  end

  def perform_operation(a, b, operator)
    case operator
      when '+'
        return a.to_f + b.to_f
      when '-'
        return a.to_f - b.to_f
      when '*'
        return a.to_f * b.to_f
      when '/'
        return a.to_f / b.to_f
      else
        return 'invalid operator'
      end
  end

  def result
    if @operands.size == 1
      return @operands.first.to_f.round(3)
    else
      return (@operands[0].to_f + @operands[1].to_f).round(3)
    end
  end
end