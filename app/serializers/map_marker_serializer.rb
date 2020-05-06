class MapMarkerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, 
  :title, 
  :address, 
  :latitude, 
  :longitude,
  :message,
  :created_at

  # set_type :map_marker
  
  # has_many :comments
  # has_many :bookmarks
  # has_many :users, through: :bookmarks
  # belongs_to :creator, record_type: :user
end
