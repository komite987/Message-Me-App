# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Samer", password: "123456", password_confirmation: "123456")
User.create(username: "Sami", password: "123456", password_confirmation: "123456")
User.create(username: "Rami", password: "123456", password_confirmation: "123456")
User.create(username: "Fadi", password: "123456", password_confirmation: "123456")


Message.create(body: "Hi everyone", user_id: 10)
Message.create(body: "Fine thx", user_id: 11)
Message.create(body: "Fine and you?", user_id: 12)
Message.create(body: "welcome", user_id: 13)
Message.create(body: "I miss you", user_id: 10)
