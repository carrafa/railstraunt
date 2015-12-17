class PartiesController < ApplicationController

  def new
    @party = Party.new
  end

  def create
    party = current_user.parties.create(party_params)
    seats = party.populate_seats party.name
    seat = Seat.new
    seats.each do |seat|
      party.seats.create(name: seat)
    end
    redirect_to user_path(current_user)
  end

  def show
    @party = Party.find(params[:id])
  end

  private

  def party_params
    params.require(:party).permit(:name)
  end

  def seat_params
    params.require(:party).permit(:party_id)
  end

end
