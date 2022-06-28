require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
p Store.sum(:annual_revenue)

p Store.average(:annual_revenue).to_i

p Store.where("annual_revenue >= ?", "1000000").size