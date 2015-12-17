class PartiesController < ApplicationController

  def new
    @party = Party.new
  end

  def create
    current_user.parties.create(party_params)
    redirect_to user_path(current_user)
  end

  def show
    party = Party.find()
  end

  private

  def party_params
    params.require(:party).permit(:name)
  end

end
