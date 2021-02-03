class Tag < ApplicationRecord

    # Associations
    has_many :tag_posts, dependent: :destroy
    has_many :tagged_posts, through: :tag_posts, source: :post

end
