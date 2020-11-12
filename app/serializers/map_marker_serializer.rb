class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :latitude, 
  :longitude,
  :creator,
  :message,
  :comments,
  :created_at

  has_one :creator, serializer: CreatorSerializer
  has_many :comments
  has_many :users
  
end