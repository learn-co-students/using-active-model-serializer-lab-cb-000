class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    respond_to do |f|
      f.json { render json: @order }
      f.html { render 'show' }
    end
  end

end
