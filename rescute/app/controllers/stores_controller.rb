class StoresController < ApplicationController

  def index
    @stores = Store.limit(10)
  end
  def show
    @id = params[:id]
    @dog = Store.find(@id)
  end

end








