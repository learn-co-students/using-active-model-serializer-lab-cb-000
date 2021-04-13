class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory, :description
  has_many :orders
end
