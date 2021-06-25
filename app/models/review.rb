class Review < ApplicationRecord
    belongs_to :crisp
    belongs_to :user
    has_many :comments

    validates :rating, :comment, presence: true

    scope :three_star, -> { where(rating: 5) }
    scope :three_star, -> { where(rating: 4) }
    scope :three_star, -> { where(rating: 3) }
    scope :three_star, -> { where(rating: 2) }
    scope :three_star, -> { where(rating: 1) }
end
