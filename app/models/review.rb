class Review < ActiveRecord::Base
  belongs_to :resturant

  RATINGS = [1,2,3,4,5]
  validates :rating, presence: true, inclusion: { in: RATINGS, message: ' must be between 1 and 5'}
  validates :description, presence: true
end
