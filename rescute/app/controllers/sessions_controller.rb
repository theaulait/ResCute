class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
    else
    # The error message that will be display if the combination is not correct
    flash[:danger] = 'Sorry, the password/email combination is not valid'
    # goes to new
    render 'new'
  end

  def destroy

  end

end
