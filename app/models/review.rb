class Review < ApplicationRecord
  RATINGS = [0,1,2,3,4,5]
  belongs_to :restaurant
  validates :rating, numericality: true, inclusion: { in: RATINGS, allow_nil: false }
  validates :content, presence: true
end
