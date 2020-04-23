class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: { case_sensitive: false }

    has_many :comments, dependent: :destroy

    has_many :user_markers, dependent: :destroy
    has_many :map_markers, through: :user_markers

    has_many :created_markers, class_name: 'MapMarker', inverse_of: 'creator'

end

# 
# class Author
#     has_many :books, inverse_of: 'writer'
# end
   
# class Book
#     belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
# end

# User
    # has_many :bookmarks
    # has_many :posts, through: :bookmarks
    # has_many :authored_posts, foreign_key: :author_id, class_name: 'Post'
# Bookmark
    # belongs_to :post
    # belongs_to :user
# Post
    # belongs_to :author, class_name: 'User'
    # has_many :bookmarks
    # has_many :users, through: :bookmarks
