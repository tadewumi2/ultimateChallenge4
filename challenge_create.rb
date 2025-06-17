# 1. Creation of new product # method 1
product.create(name: "Laptop", description: "Tech", price: 1000, quantity: 10)

# Method 2
product = Product.new
product.name = "Chair"
product.description = "Wooden"
product.price = 50
product.quantity = 15
product.save

#Method 3
product = Product.new(name: "Book", description: "Reading", price: 12, quantity: 8)
product.save

# Creating a Product object with some missing required columns:
bad_product = Product.new(name: "Badone")
bad_product.save
puts bad_product.errors.full_messages

# Find category name of a product
product = Product.first
puts product.category.name

# Create a new product using a category (has_many association)
category = Category.find_by(name: "Electronics")
category.products.create(name: "Speaker", description: "Bluetooth", price: 30, quantity: 5)

#. Find a category and get products over a price
category = Category.find_by(name: "Books")
expensive_books = category.products.where("price > 20")
expensive_books.each { |p| puts "#{p.name}: $#{}p.price"}