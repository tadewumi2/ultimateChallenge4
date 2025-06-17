Category.all.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  - #{product.name}: $#{product.price}"
  end
end
