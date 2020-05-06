class BookmarkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :created_at, :map_marker, :user, :map_marker_id, :user_id

  
  belongs_to :user
  belongs_to :map_marker
end
