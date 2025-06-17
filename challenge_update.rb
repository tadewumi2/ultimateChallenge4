products = Product.where("quantity > 40")
puts products.each do |p|
	p.quantity += 1
	p.save
end