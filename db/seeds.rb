User.destroy_all
MapEvent.destroy_all
UserEvent.destroy_all
Comment.destroy_all

5.times do
    User.create(username: Faker::Name.first_name, password: "pw", email: Faker::Internet.email)
end

5.times do
    MapEvent.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, address: Faker::Address.street_address, title: Faker::Address.community)
end

3.times do
    Comment.create(content: Faker::Quote.singular_siegler, user_id: User.all.sample.id, map_event_id: MapEvent.all.sample.id)
end

3.times do
    UserEvent.create(user_id: User.all.sample.id, map_event_id: MapEvent.all.sample.id)
end