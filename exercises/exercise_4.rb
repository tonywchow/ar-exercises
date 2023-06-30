require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

surrey = Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true) 

@mens_stores.each do |s|
  puts "#{s.name}"
  puts "#{s.annual_revenue}"
end

@less_than_one_million = Store.where(["womens_apparel = ? and annual_revenue < ?", "True", "1000000"])

@less_than_one_million.each do |m|
  puts "#{m.name}"
  puts "#{m.annual_revenue}"
end