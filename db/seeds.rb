require 'rest-client'
require 'json'

headers = {"App-Id": ENV["INFERMEDICA_API_ID"], "App-Key": ENV["INFERMEDICA_API_KEY"], "Model": "infermedica-en", "Version": "v3"}

result = RestClient.get("https://api.infermedica.com/covid19/symptoms", headers=headers)
symptoms_array = JSON.parse(result)
symptoms = symptoms_array.each do |object|
    Symptom.create()
    end

User.destroy_all
MapMarker.destroy_all
Bookmark.destroy_all
Comment.destroy_all

5.times do
    User.create(username: Faker::Name.first_name, password: "pw", email: Faker::Internet.email)
end

10.times do
    MapMarker.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, address: Faker::Address.street_address, title: "Example", creator: User.all.sample)
end

10.times do
    Comment.create(content: Faker::Marketing.buzzwords, user_id: User.all.sample.id, map_marker_id: MapMarker.all.sample.id)
end

# 5.times do
#     Bookmark.create(user_id: User.all.sample.id, map_marker_id: MapMarker.all.sample.id)
# end
