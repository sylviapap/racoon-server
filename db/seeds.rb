require 'rest-client'
require 'json'
require 'dotenv-rails'

# Symptom seed comes from Infermedica API - do once when reset/creating db but then comment out so you don't have to re-request to the API

# APIheaders = {"App-Id" => "#{ENV["INFERMEDICA_APP_ID"]}", "App-Key" => "#{ENV["INFERMEDICA_APP_KEY"]}"}

# result = RestClient.get("https://api.infermedica.com/covid19/symptoms", headers=APIheaders)
# symptoms_array = JSON.parse(result)
# symptoms_array.each do |object|
#     Symptom.find_or_create_by(
#         category: object["category"],
#         common_name: object["common_name"],
#         infermedica_id: object["id"],
#         name: object["name"],
#         question: object["question"],
#         seriousness: object["seriousness"],
#         sex_filter: object["sex_filter"])
#     end

User.destroy_all
MapMarker.destroy_all
Comment.destroy_all
ReportedSymptom.destroy_all
Diagnosis.destroy_all

20.times do
    user = User.create(first_name: Faker::Name.first_name, last_name: "test_user", password: "password", password_confirmation: "password", email: Faker::Internet.email)
    3.times do 
        ReportedSymptom.create(user: user, symptom: Symptom.all.sample)
    end
end

cities = [
    {title: "New York", latitude: 40.7128, longitude: -74.0060},
    {title: "Chicago", latitude: 41.8781, longitude: -87.6298},
    {title: "Tokyo", latitude: 35.6804, longitude: 139.7690},
    {title: "Cairo", latitude: 30.0444, longitude: 31.2357},
    {title: "Paris", latitude: 48.8566, longitude: 2.3522},
    {title: "Sao Paolo", latitude: -23.5505, longitude: -46.6333},
    {title: "Sydney", latitude: -33.8688, longitude: 151.2093},
    {title: "Toronto", latitude: 43.6532, longitude: -79.3832},
    {title: "Mexico City", latitude: 19.4326, longitude: -99.1332},
    {title: "Moscow", latitude: 55.7558, longitude: 37.6173}
]

cities.each do |city|
    MapMarker.create(latitude: city[:latitude], longitude: city[:longitude], title: "[Example] #{city[:title]}", address: Faker::Address.street_address, message: "Example message", creator: User.all.sample)
end

20.times do
    Comment.create(content: "Example comment", user: User.all.sample, map_marker: MapMarker.all.sample)
end