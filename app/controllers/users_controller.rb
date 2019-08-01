class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update, :events]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params # Set up the user but don't save yet.
    if @user.save # .save returns true if the user is valid, and false otherwise.
      session[:user_id] = @user.id # Login when signing up.
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @current_user.update user_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @current_user.image = req["public_id"]
    end
    @current_user.update user_params
    @current_user.save
    redirect_to root_path
  end

  def events
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :image, :dob, :phone)
  end
end
