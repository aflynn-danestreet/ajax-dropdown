# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
country_list = [
    "USA",
    "Russia",
    "Germany",
    "Italy",
    "China"
]

cities_list = [
    ["Boston", 1],
    ["New York", 1],
    ["Miami", 1],
    ["Moscow", 2],
    ["St. Petersburg", 2],
    ["Stalingrad", 2],
    ["Munich", 3],
    ["Berlin", 3],
    ["Dresden", 3],
    ["Naples", 4],
    ["Milan", 4],
    ["Rome", 4],
    ["Shanghai", 5],
    ["Hong Kong", 5],
    ["Wuhan", 5]
]

country_list.each do |name|
  Country.create(name: name)
end

cities_list.each do |name, country_id|
  City.create(name: name, country_id: country_id)
end