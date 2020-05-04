class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name
  has_many :bookmarks
  has_many :map_markers, through: :bookmarks

  has_many :created_markers
  
  has_many :diagnoses
  has_many :reported_symptoms, through: :diagnosis
end