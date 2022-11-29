class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment, :user_id
end
