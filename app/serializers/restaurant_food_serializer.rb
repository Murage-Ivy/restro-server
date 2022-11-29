class RestaurantFoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description
  has_many :foods
  has_many :reviews
end
