class UsersController < ApplicationController
  before_action :make_sure_admin, only: [:index]

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
#GET /users
  def index
    @users = User.all
  end

  def show

  end

#GET /users/new
  def new
    @user = User.new
    @is_sign_up = true
  end

  def edit
    # @user = User.where(id:params[:id]).first
  end

  def create
    @user = User.new(user_params)
     if @user.save
      redirect_to new_session_path, :notice => "User was successfully created!"
    else
       redirect_to new_user_path
    end
  end

  def update
    @user = User.where(id:params[:id]).first
      if @user.update(user_params)
        redirect_to new_session_path
      else
        @user  = User.new
        render "new"
      end
  end

  def destroy
    @user=User.where(id:params[:id]).first
    if @user.id == current_user.id
        reset_session if 
        @user.destroy
        redirect_to new_user_path
        end
    end

private

  def user_params
      params.require(:user).permit(:fullname, :age, :birthday, :nationality, :city, :username, :password, :password_confirmation)
    end

  def make_sure_admin
      if !current_user || !current_user.is_admin
        redirect_to users_path
      end
    end
end