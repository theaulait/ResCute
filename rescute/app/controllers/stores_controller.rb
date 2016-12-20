class StoresController < ApplicationController

  def index
    # @stores = Store.limit(1)
    @stores = Store.all.order("created_at DESC").paginate(page: params[:page], per_page: 1)
  end
  def show
    @id = params[:id]
    @dog = Store.find(@id)
  end

end








