class UserEventSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :map_event
end
