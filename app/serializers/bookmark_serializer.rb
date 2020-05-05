class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :map_marker, :created_at
  belongs_to :user
  belongs_to :map_marker
end
