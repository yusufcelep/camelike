class User < ApplicationRecord

    # Associations
    has_one_attached :pro_pic
    has_many :posts, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_posts, through: :likes, source: :post
    has_many :comments, dependent: :destroy
    has_many :commented_posts, through: :comments, source: :post
    has_many :follows 
    # returns an array of users who follow the current_user, "I have a following."
    # has_many :received_follows, foreign_key: :following_id, class_name: "Follow"
    # has_many :followings, through: :received_follows, source: :following
    
    # returns an array of users the current_user follows, "I'm a follower."
    # has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
    # has_many :followers, through: :given_follows, source: :follower
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followings, through: :followed_users
    has_many :following_users, foreign_key: :following_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    
    # Validations
    has_secure_password
    
    validates :name, presence: true, length: {maximum: 30}
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 9, maximum: 20}
    validates :bio, length: { maximum: 160, too_long: "%{count} characters is the maximum allowed" }

end
