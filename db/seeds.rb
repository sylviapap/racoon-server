require 'rest-client'
require 'json'
require 'dotenv-rails'

# Symptom seed comes from Infermedica API - do once when reset/creating db but then comment out so you don't have to re-request to the API

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

User.destroy_all
MapMarker.destroy_all
Comment.destroy_all
ReportedSymptom.destroy_all
Diagnosis.destroy_all

5.times do
    User.create(first_name: Faker::Name.first_name, password: "password", password_confirmation: "password", email: Faker::Internet.email)
end

10.times do
    MapMarker.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, address: Faker::Address.street_address, title: "Example", creator: User.all.sample)
end

10.times do
    Comment.create(content: "this is an example comment", user: User.all.sample, map_marker: MapMarker.all.sample)
end

10.times do
    ReportedSymptom.create(user: User.all.sample, symptom: Symptom.all.sample)
end

Diagnosis.create(description: "Your symptoms are very serious and you may have COVID-19.", label: "Call the emergency number. Avoid all contact.", triage_level: "isolation_ambulance", user: User.all.first)