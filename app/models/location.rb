class Location < ApplicationRecord

    # Associations 
    has_many :posts, dependent: :destroy

    # Validations
    validates :name, presence: true, uniqueness: true, length: {maximum: 30}
    validates :city, presence: true
    validates :country, presence: true

end
