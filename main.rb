require_relative './commands/rpn_calculator'
require 'colorize'


puts "\nPlease type an operand or an operator: ".blue
puts "\nGet the answer to your expression by inserting the equal symbol '='".blue
param = ''
while true do
  param << gets("=")
  cmd = RpnCalculator.new(param).call
  puts "\Expression: #{param}".blue
  puts "\nResult: #{cmd}".green
  puts "\nPress Ctrl + C to exit the program.".red
end