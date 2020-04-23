class UserMarker < ApplicationRecord
  belongs_to :user
  belongs_to :map_marker
end

# 
# class Book < ApplicationRecord
#   belongs_to :author, class_name: "Patron",
#                         foreign_key: "patron_id"
# end