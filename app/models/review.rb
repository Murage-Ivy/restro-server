class Review < ApplicationRecord
  validates :comment, presence: true, length: { maximum: 500 }
  belongs_to :restaurant
  belongs_to :user
end
