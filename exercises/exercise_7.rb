require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

lowl = @store2.employees.create(last_name: "Lowl", hourly_rate: 60)
puts "======="
puts "#{lowl} valid creation? *** : #{lowl.valid?}"
puts "#{lowl} creation error: #{lowl.errors.messages}"
puts "======="

jackson = @store2.employees.create(first_name: "Jackson", hourly_rate: 60)

puts "======="
puts "#{jackson} valid creation? *** : #{jackson.valid?}"
puts "#{jackson} creation error: #{jackson.errors.messages}"
puts "======="

abby = Employee.new do |e| 
  e.first_name = "Abby"
  e.last_name = "Jones"
  ehourly_rate = 100
end

puts "======="
puts "#{abby} valid creation? *** : #{abby.valid?}"
puts "#{abby} creation error: #{abby.errors.messages}"
puts "======="


rejectStore = Store.new do |store|
    store.name = "lo"
    store.annual_revenue = 7689
    store.mens_apparel = true
    store.womens_apparel= false
end

puts "======="
puts "#{rejectStore} valid creation? *** : #{rejectStore.valid?}"
puts "#{rejectStore} creation error: #{rejectStore.errors.messages}"
puts "======="


rejectStore2 = Store.new do |store|
    store.name = "Bad Store Revenue"
    store.annual_revenue = '90'
    store.mens_apparel = true
    store.womens_apparel= false
end

puts "======="
puts "#{rejectStore2} valid creation? *** : #{rejectStore2.valid?}"
puts "#{rejectStore2} creation error: #{rejectStore2.errors.messages}"
puts "======="

# IGNORE:

#   Employee.add_employee(@store2.employees.create(last_name: "Lowl", hourly_rate: 60))
#   Employee.add_employee(@store2.employees.create(first_name: "Jackson", hourly_rate: 60))

# createBadEmployeeEntries = [
#   @store2.employees.create(last_name: "Lowl", hourly_rate: 60),
#   @store2.employees.create(first_name: "Jackson", hourly_rate: 60)
# ]
# end

# createBadEmployeeEntries.each do |e|

#   puts "======="
#   puts "#{e} valid creation? *** : #{e.valid?}"
#   puts "#{e} creation error: #{e.errors.messages}"
#   puts "======="

# end