require_relative './commands/rpn_calculator'
require 'colorize'


while true do
  puts "\nPlease insert a postfix expression: ".blue
  puts "\nEach operand/operator must be separated by an empty space(Space key) or line break(Enter key)".yellow
  puts "\nGet the answer to your expression by inserting the equal symbol '='".yellow
  param = ''
  param << gets("=")
  cmd = RpnCalculator.new(param).call
  puts "\Expression: #{param.chars.join('')}".yellow
  puts "\nResult: #{cmd}".green
  puts "\nPress Ctrl + C to exit the program.".red
end