class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :like, :image_url
end
