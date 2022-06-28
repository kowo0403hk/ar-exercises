require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
p @store3 = Store.find(3)

Store.destroy_by(id: 3)

p Store.count