require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


# @store2.employees.create(hourly_rate: 35).errors.each {|e| puts e.full_message}

puts "Give me a store name:"
print "> "
input = $stdin.gets.chomp

Store.create(name: input).errors.each {|e| puts e.full_message}