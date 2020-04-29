require 'rest-client'
require 'json'
require 'dotenv-rails'

# APIheaders = {"App-Id" => "#{ENV["INFERMEDICA_APP_ID"]}", "App-Key" => "#{ENV["INFERMEDICA_APP_KEY"]}"}

# result = RestClient.get("https://api.infermedica.com/covid19/symptoms", headers=APIheaders)
# symptoms_array = JSON.parse(result)
# symptoms_array.each do |object|
#     Symptom.create(
#         category: object["category"],
#         common_name: object["common_name"],
#         infermedica_id: object["id"],
#         name: object["name"],
#         question: object["question"],
#         seriousness: object["seriousness"],
#         sex_filter: object["sex_filter"])
#     end

# User.destroy_all
# MapMarker.destroy_all
# Comment.destroy_all

5.times do
    User.create(username: Faker::Name.first_name, password: "pw", email: Faker::Internet.email)
end

10.times do
    MapMarker.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, address: Faker::Address.street_address, title: "Example", creator: User.all.sample)
end

10.times do
    Comment.create(content: "this is an example comment", user_id: User.all.sample.id, map_marker_id: MapMarker.all.sample.id)
end