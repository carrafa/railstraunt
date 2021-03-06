class OrdersController < ApplicationController

  before_action :authenticate!

  def index
    @orders = Order.all
  end

  def history
    admin_authenticate!
    @orders = Order.all
  end

  def stats
    admin_authenticate!
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
    if current_user.account == "chef"
      redirect_to orders_path
    else
    redirect_to party_path(order.party_id)
    end
  end

  def edit_multiple
    party = Party.find(params[:party_id])
  end

  def update_multiple
    party = Party.find(params[:party_id])
    params['order'].keys.each do |id|
      @orders = party.orders
      @orders.update_all(params['order'][id])
    end
    redirect_to user_path(current_user)
  end


  private

  def order_params
    params.require(:order).permit(:dish_id, :party_id, :seat, :status, :note)
  end

end
