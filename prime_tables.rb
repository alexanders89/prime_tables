require './lib/prime'
require './lib/table'


if ARGV.first == nil
  number = 10
else
  number = ARGV.first.to_i
end

puts ''
puts "Multiplication table of first #{number} prime numbers"
puts Table.build(Prime.list(number))
