FactoryGirl.define do

  factory(:product) do
    name("test")
    description("test")
    price(12.4)
    avg_rating(4)
    manifacture_name("test")
    category("Cookies")
  end
end
