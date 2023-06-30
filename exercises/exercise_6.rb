require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60
  )

@store1.employees.create(
  first_name: "Bob", 
  last_name: "Billy", 
  hourly_rate: 30
)

@store2.employees.create(
    first_name: "Old", 
    last_name: "Dutch", 
    hourly_rate: 5
)

@store2.employees.create(
    first_name: "Mark", 
    last_name: "James", 
    hourly_rate: 100
)

puts "#{Employee.where(store_id: 1).count}"
puts "#{Employee.where(store_id: 2).count}"
