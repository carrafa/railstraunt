class TablesController < ApplicationController

  def new
    @table = Table.new
  end

  def create
    current_user.tables.create(table_params)
    redirect_to user_path(current_user)
  end

  private

  def table_params
    params.require(:table).permit(:name)
  end

end
