require './lib/prime'
require './lib/table'


puts 'How many primes would you like?'
number = gets.chomp.to_i
puts Table.build(Prime.list(number))
