# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
User.delete_all

product_list = [
["T-Shirt", 12.95, "Printed on Brand Name, 100% Cotton.", "image_1"],
["Jacket", 59.95, "Printed on Brand Name, 70/30 poly-cotton blend.", "image_2"],
["Pants", 34.95, "Printed on Brand Name, 100% Cotton Khaki.", "image_3"],
["Desk Plaque", 39.99, "Rectangular, 8-inch by 12-inch plaque.", "image_4"],
["Wall Plaque", 49.99, "Ornamental Wall Plaque.", "image_5"],
["Team Wall Plaque", 89.99, "Team plaque with one large container and several smaller containers.", "image_6"],
["Trophy", 139.99, "A standard cup-style trophy with an plaque on the base.", "image_7"]
]

product_list.each do |name, price, description, image|
    Product.create( name: name, price: price, description: description, image: image)
end

User.create(id:1, email: "admin@wsc.com", password: "password", password_confirmation: "password", admin: true, first_name: "Admin", last_name: "User")
