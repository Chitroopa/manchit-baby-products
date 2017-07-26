# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Image.destroy_all
ProductDetail.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all

5.times do |index|
  f = Product.create!(
        name: Faker::GameOfThrones.dragon,
        description: Faker::StarWars.quote,
        price: Faker::Number.decimal(2),
        avg_rating: Faker::Number.between(1, 5),
        manifacture_name: Faker::GameOfThrones.dragon,
        category: "Accessories"
      )
  2.times do |index|
    i= Image.create!(
      product_id: f.id, :image => open("public/images/pa1.jpeg")
    )
  end
  2.times do |index|
    i= ProductDetail.create!(
      product_id: f.id,
      title: Faker::StarWars.quote,
      description: Faker::StarWars.quote,
      title_type: Faker::Number.between(1, 2)
    )
  end
  2.times do |index|
    i= Review.create!(
      product_id: f.id,
      title: Faker::StarWars.quote,
      content: Faker::StarWars.quote,
      rating: Faker::Number.between(1, 5),
      :review_image => open("public/images/pa1.jpeg")
    )
  end
end
