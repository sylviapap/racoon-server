User.destroy_all
MapMarker.destroy_all
UserMarker.destroy_all
Comment.destroy_all

5.times do
    User.create(username: Faker::Name.first_name, password: "pw", email: Faker::Internet.email)
end

10.times do
    MapMarker.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, address: Faker::Address.street_address, title: Faker::Address.community)
end

10.times do
    Comment.create(content: Faker::Quote.singular_siegler, user_id: User.all.sample.id, map_marker_id: MapMarker.all.sample.id)
end

5.times do
    UserMarker.create(user_id: User.all.sample.id, map_marker_id: MapMarker.all.sample.id)
end