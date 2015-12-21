class PartiesController < ApplicationController

  before_action :authenticate!
  before_action :server_admin_authenticate!

  def index
    admin_authenticate!
    @parties = Party.all
  end

  def new
    @party = Party.new
  end

  def create
    party = current_user.parties.create(party_params)
    redirect_to user_path(current_user)
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    party = Party.find(params[:id])
    party.update(party_params)
    redirect_to user_path(current_user)
  end


  def update_tip
    @party = Party.find(params[:party_id])
    @party.update(party_params)
    redirect_to party_path(@party.id)
  end

  def show
    @party = Party.find(params[:id])
    @order = Order.new
    @orders = Order.where(id = @party.id)
    @seats = @party.populate_seats @party.table
  end

  def bill
    @party = Party.find(params[:party_id])
  end

  private

  def party_params
    params.require(:party).permit(:table, :status, :tip)
  end

end
