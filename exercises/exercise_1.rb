require_relative '../setup'

puts "Exercise 1"
puts "----------"

store_one = Store.new do |store|
    store.name = "Burnaby"
    store.annual_revenue = 300000
    store.mens_apparel = true
    store.womens_apparel= true
end
store_one.save

store_two = Store.new do |store|
    store.name = "Richmond"
    store.annual_revenue = 1260000 
    store.mens_apparel = false
    store.womens_apparel= true
end
store_two.save

store_three = Store.new do |store|
    store.name = "Gastown"
    store.annual_revenue = 190000
    store.mens_apparel = true
    store.womens_apparel= false
end
store_three.save

puts Store.count
