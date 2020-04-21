class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :map_event
end
