class Product < ActiveRecord::Base
  validates :name, :description, :categories, presence: true
  validates :prices, numericality: { only_integer: true }
end
