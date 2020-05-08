class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :symptoms, :map_markers, :comments
  has_many :bookmarks
  has_many :map_markers, through: :bookmarks

  has_many :comments
  has_many :map_markers, through: :comments

  has_many :created_markers
  
  has_many :diagnoses
  has_many :reported_symptoms
  has_many :symptoms, through: :reported_symptoms
end