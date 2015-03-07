# create fake data env for development
unless Rails.env.production?
  20.times do
    FactoryGirl.create(:product)
  end

  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    prices: Faker::Commerce.price,
    categories: Faker::Lorem.paragraph,
    image: Faker::Avatar.image
  )
end
