10.times do
  category = Category.create(name: Faker::Commerce.department)

  10.times do
    category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 5.0..100.0),
      quantity: rand(1..20)
    )
  end
end
