class Review < ApplicationRecord
  validates :comment, length: { minimum: 100 }
  belongs_to :restaurant
  belongs_to :user
end
