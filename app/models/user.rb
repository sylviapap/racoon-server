class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: { case_sensitive: false }

    has_many :comments, dependent: :destroy

    has_many :user_markers
    has_many :map_markers, through: :user_markers

end

# 
# class Author < ApplicationRecord
#     has_many :books, inverse_of: 'writer'
#   end
   
#   class Book < ApplicationRecord
#     belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
#   end

# Bookmark 
#  belongs_to :post
#  belongs_to :user
# User
#  has_many :posts
#  has_many :posts, :through => :bookmarks
# Post
#  belongs_to :user
#  has_many :posts, :through => :bookmarks
