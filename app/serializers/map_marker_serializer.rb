class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :address, 
  :latitude, 
  :longitude,
  :creator
  
  has_many :comments
  has_many :bookmarks
  has_many :users, through: :bookmarks
  belongs_to :creator
end
