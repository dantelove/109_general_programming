# beginning_ruby_4_3.rb

#Exercise 3

#This is my attempt before watching the walkthrough

PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x220", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Mackbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  PRODUCTS.select do |product| 
    product[:price] >= query[:price_min] &&
    product[:price] <= query[:price_max] &&
    product[:name].downcase.include?(query[:q])
  end
end


p search(query)

puts

p search(query2)
