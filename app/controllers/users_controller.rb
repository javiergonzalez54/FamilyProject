class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  private
 def allowed_params
   params.require(:user).permit(:email, :password, :password_digest)
 end
end
