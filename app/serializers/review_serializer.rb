class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment, :user_id
  belongs_to :user
end
