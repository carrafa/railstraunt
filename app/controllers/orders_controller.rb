class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to party_path(params[:party_id])
  end

  private

  def order_params
    params.require(:order).permit(:dish_id, :party_id, :seat, :status)
  end

end
