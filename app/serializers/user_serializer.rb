class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name
  has_many :bookmarks
  has_many :map_markers, through: :bookmarks

  has_many :created_markers
  
  has_many :reported_symptoms
  has_many :symptoms, through: :reported_symptoms
end