class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :like, :description, :image_url
end
