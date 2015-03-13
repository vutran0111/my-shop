class Product < ActiveRecord::Base
  validates :name, :description, :categories, presence: true
  validates :prices, numericality: { only_integer: true }

  has_attached_file :image, :styles => { :medium => "400x400>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
