class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) #Not the final implemenation!
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the sample App"
      redirect_to @user
      # handle a successful save.
    else
      render 'new'
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
