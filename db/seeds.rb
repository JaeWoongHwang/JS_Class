# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  Board.create(
    title: Faker::Movie.quote,
    contents: Faker::Lorem.paragraphs.join.to_s,
    user_id: Faker::Color.color_name
  )
end
