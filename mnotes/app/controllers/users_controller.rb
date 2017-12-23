class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @note = Note.new
    @bucketlist = Bucketlist.new
    @brainstorm = Brainstorm.new 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to users_path
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :img_url, :bio, :note, :bucketlist, :brainstorm)
  end
end
