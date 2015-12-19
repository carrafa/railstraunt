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

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to party_path(order.party_id)
  end

  def edit_multiple
    party = Party.find(params[:id])
  end

  def update_multiple
    party = Party.find(params[:party_id])
    @orders = party.orders
    @orders.update_all(status: "paid")

    redirect_to party_bill_path(party)
  end


  private

  def order_params
    params.require(:order).permit(:dish_id, :party_id, :seat, :status)
  end

end
