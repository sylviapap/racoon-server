class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :address, 
  :latitude, 
  :longitude,
  :creator,
  :message,
  :comments,
  :created_at

  # definitely need these 2 associations
  has_one :creator, serializer: CreatorSerializer
  has_many :comments

  has_many :users
  
  # belongs_to :creator, record_type: :user
  # belongs_to :user
  # belongs_to :creator, class_name: 'User', foreign_key: :user_id
  
end