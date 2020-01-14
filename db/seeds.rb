# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

10.times do |i|
  user = User.create(nickname: FFaker::AnimalUS.common_name, email: FFaker::Internet.email)

  (rand(3) + 1).times do |i|
    Post.create(user_id: user.id, title: FFaker::CheesyLingo.title, body: FFaker::CheesyLingo.sentence)
  end
end
