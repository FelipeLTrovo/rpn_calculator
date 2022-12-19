require_relative './commands/rpn_calculator'

expression = "5.6523556 1.44326 2.6341 + *"
operands = []
operators = ["+", "-", "*", "/"]
support_array = []
cmd = RpnCalculator.new(expression).call