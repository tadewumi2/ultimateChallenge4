class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # Columns in products table
# <Product id, name, description, price, stock_quantity, category_id, created_at, and updated_at

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  # Adding validations to the product model
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :description, :price, :quantity, presence: true
  
# Association with Category
  belongs_to :category
end

