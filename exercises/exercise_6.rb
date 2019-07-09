require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Hamm", hourly_rate: 50)
@store1.employees.create(first_name: "Sally", last_name: "Hanson", hourly_rate: 60)

@store2.employees.create(first_name: "Jacob", last_name: "Burgs", hourly_rate: 50)
@store2.employees.create(first_name: "Erin", last_name: "Leal", hourly_rate: 50)
@store2.employees.create(first_name: "Ben", last_name: "Farsh", hourly_rate: 55)

@store3.employees.create(first_name: "Junaid", last_name: "Moop", hourly_rate: 1)
@store3.employees.create(first_name: "Alex", last_name: "C", hourly_rate: 55)
@store3.employees.create(first_name: "Carey", last_name: "Manz", hourly_rate: 58)

puts Employee.count
# returns 8 not 9 because of validation on hourly rate


# IGNORE:

# store1Employees = [
#   (first_name: "Khurram", last_name: "Virani", hourly_rate: 60),
#   (first_name: "John", last_name: "Hamm", hourly_rate: 50),
#   (first_name: "Sally", last_name: "Hanson", hourly_rate: 60)
# ]

# store2Employees = [
#   (first_name: "Jacob", last_name: "Burgs", hourly_rate: 50),
#   (first_name: "Erin", last_name: "Leal", hourly_rate: 50),
#   (first_name: "Ben", last_name: "Farsh", hourly_rate: 55)
# ]

# store3Employees = [
#   (first_name: "Junaid", last_name: "Moop", hourly_rate: 1),
#   (first_name: "Alex", last_name: "C", hourly_rate: 55),
#   (first_name: "Carey", last_name: "Manz", hourly_rate: 58)
# ]


# store1Employees.each do |e|
#   Employee.add_employee((@store1.employees.create(e)))
# end

# store2Employees.each do |e|
#   Employee.add_employee((@store2.employees.create(e)))
# end

# store3Employees.each do |e|
#   Employee.add_employee((@store3.employees.create(e)))
# end