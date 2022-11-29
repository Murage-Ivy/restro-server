class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :rating, :image_url
end
