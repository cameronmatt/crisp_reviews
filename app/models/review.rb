class Review < ApplicationRecord
    belongs_to :crisp
    belongs_to :user
end
