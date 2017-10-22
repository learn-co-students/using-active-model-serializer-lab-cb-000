class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :description, :inventory
end
