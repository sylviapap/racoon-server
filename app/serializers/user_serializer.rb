class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :user_markers
  has_many :map_markers, through: :user_markers

  has_many :created_markers
end
