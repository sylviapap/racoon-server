class UserMarker < ApplicationRecord
  belongs_to :user
  belongs_to :map_marker
end