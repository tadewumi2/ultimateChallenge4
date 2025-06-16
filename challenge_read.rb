require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

# 1. Find any product and inspect it
product = Product.first
puts "\nInspecting a product:"
puts product.inspect

# Using ActiveRecord to print out the total number of products
puts "Total Products: #{Product.count}"

# The names of all products above $10 with names that begin with the letter C. 
puts "Products above $10 starting with C:"
product.where("price > 10 AND name LIKE 'C%'").each do |prod|
	puts prod.name
end

# Total number of products with a low stock quantity
puts "Low stock products:"
puts Products.where("quantity < 5").count