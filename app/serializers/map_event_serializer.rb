class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :address, 
  :latitude, 
  :longitude
  has_many :comments
  has_many :user_markers
  has_many :users, through: :user_markers
end
