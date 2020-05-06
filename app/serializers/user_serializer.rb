class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :email, :first_name, :last_name, :bookmarks, :created_markers, :reported_symptoms, :diagnoses



  # set_type :user

  has_many :bookmarks

  # has_many :map_markers, through: :bookmarks

  # has_many :created_markers, record_type: :map_marker
  
  # has_many :diagnoses
  # has_many :reported_symptoms
  # has_many :symptoms, through: :reported_symptoms
end