class MapEventSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :address, 
  :latitude, 
  :longitude
  has_many :comments
  has_many :user_events
  has_many :users, through: :user_events
end
