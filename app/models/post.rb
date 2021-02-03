class Post < ApplicationRecord

    # Associations
    belongs_to :user
    belongs_to :location
    has_many :comments, dependent: :destroy
    has_many :comments_f_users, through: :comments, source: :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    # Validations
    # validates :content, presence: true, length: { maximum: 280,
    # too_long: "%{count} characters is the maximum allowed" }

end
