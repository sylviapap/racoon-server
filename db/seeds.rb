# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

User.destroy_all
User.create(username: "Mary", email: "mary@mail.com", password: "password")
User.create(username: "John", password: "password")
User.create(username: "Jane", password: "password")