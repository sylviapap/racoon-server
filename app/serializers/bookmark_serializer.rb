class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :map_marker, :user, :created_at
  has_one :user
  has_one :map_marker
end
