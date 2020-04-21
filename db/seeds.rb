User.destroy_all

3.times do
    User.create(username: Faker::Name.first_name, password: "pw", email: Faker::Internet.email)
end