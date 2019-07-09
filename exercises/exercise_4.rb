require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@store3 = Store.new do |store|
    store.name = "Surrey"
    store.annual_revenue = 224000
    store.mens_apparel = true
    store.womens_apparel= false
end
@store3.save

@store4 = Store.new do |store|
    store.name = "Whistler"
    store.annual_revenue = 1900000 
    store.mens_apparel = false
    store.womens_apparel= true
end
@store4.save

@store5 = Store.new do |store|
    store.name = "Yaletown"
    store.annual_revenue = 430000
    store.mens_apparel = true
    store.womens_apparel= true
end
@store5.save

@mens_stores = Store.where(mens_apparel: true) { |store| store }

@mens_stores.each do |store|
    puts store.name 
    puts store.annual_revenue
end

@womens_apparel = Store.where(womens_apparel: true) { |store| store }

generates_less_than_1m = @womens_apparel.select do |store|
  store.annual_revenue < 1000000 
end

generates_less_than_1m.each do |store| 
  puts store.name
  puts store.annual_revenue

end
