class ProductSerializer < ActiveModel::Serializer
    attributes :name, :price, :inventory, :description
    has_many :ordered_products
    has_many :orders, :through => :ordered_products
    # belongs_to :author, serializer: 
#   PostAuthorSerializer
  end