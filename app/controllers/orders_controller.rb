class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
      #BEFORE using a serializer:
      #render json: @post.to_json(only: [:title, :description, :id],
      #                          include: [author: { only: [:name]}])
       # AFTER USING OUR SERIALIZER
    render json: @order, status: 200
  end

end