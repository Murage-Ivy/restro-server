class Review < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 500 }
  belongs_to :restaurant
  belongs_to :user
end
