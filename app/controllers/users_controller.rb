class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :find_user,   only: [:show, :edit, :update, :destroy]
  before_action :correct_user, except: :index

  def index
    @users = User.all
  end

  def show
  end


  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user # log in use upon sign up (automatically)
      flash[:success] = "Welcome to the Rails Authentication App"
      redirect_to @user
    else
      logger.debug "Show me all errors that prevented the user from being saved: #{@user.errors}"
      logger.debug "FUll ERROR MESSAGES: #{@user.errors.full_messages}"
      render 'new'
    end
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "User updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:success] = "User deleted!"
    redirect_to root_path
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def signed_in_user
      store_location
      redirect_to login_url, notice: "Please log in" unless logged_in?
    end

    def correct_user
      find_user
      redirect_to(root_path) unless current_user? @user
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
