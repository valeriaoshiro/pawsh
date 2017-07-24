# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Location.destroy_all

use = User.first
loc = Location.create name: "Mr. Pollo", address: "123 Rowland Ave, Azusa, CA 91723", phone: "6261231234", description: "Restaurant", user: use
rev = Review.create rating: 5, comment: "Really good", location: loc