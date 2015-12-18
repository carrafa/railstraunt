class PartiesController < ApplicationController

  def new
    @party = Party.new
  end

  def create
    party = current_user.parties.create(party_params)
    redirect_to user_path(current_user)
  end

  def show
    @party = Party.find(params[:id])
    @order = Order.new
    @orders = Order.where(id = @party.id)
    @seats = @party.populate_seats @party.name
  end

  private

  def party_params
    params.require(:party).permit(:name)
  end

end
