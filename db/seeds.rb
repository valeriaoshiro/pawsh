# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.destroy_all
Review.destroy_all
Location.destroy_all
User.destroy_all

user1 = User.create name: "Admin", email: "admin@gmail.com", password: "12345678", password_confirmation: "12345678"
location1 = Location.create name: "San Dimas Dog Park", address: "301 Horsethief Canyon Rd San Dimas, CA 91773", description: "park", user: user1
location2 = Location.create name: "Lazy Dog Restaurant", address: "1440 Plaza Dr West Covina, CA 91790", phone: "(626) 480-8603", description: "restaurant", user: user1
location3 = Location.create name: "Laguna Beach Inn", address: "2020 S Coast Hwy, Laguna Beach, CA 92651", phone: "(949) 494-5450", description: "hotel", user: user1
location4 = Location.create name: "Katie’s PET DEPOT", address: "1941 Foothill Blvd Ste A La Verne, CA 91750", phone: "(909) 392-9552", description: "vet", user: user1
location5 = Location.create name: "Pupscale Dog Grooming", address: "2440 W Arrow Rt Ste 5B Upland, CA 91786", phone: "(909) 296-1185", description: "groomer", user: user1
location6 = Location.create name: "PetSmart", address: "1301 E Gladstone Glendora, CA 91740", phone: "((909) 599-7012", description: "store", user: user1