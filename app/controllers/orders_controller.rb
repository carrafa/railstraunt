class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to 
  end
end
