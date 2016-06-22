class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find_by(id: params[:id])
  end

  def update

    user = User.find_by(id: params[:id])

    user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      city: params[:city],
      state: params[:state],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      news_subscription: params[:news_subscription],
      sports_subscription: params[:sports_subscription],
      weather: params[:weather]
      )

    redirect_to "/"

  end

  def destroy
    user = User.find_by(id: params[:id])

    user.destroy

    redirect_to '/'
  end
  
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :city, :state, :email, :password, :password_confirmation, :news_subscription, :sports_subscription, :weather)
  end


end
