class BrainstormsController < ApplicationController
  def index
    @brainstorms = Brainstorm.all
  end

  def new
    @brainstorm = Brainstorm.new
    @user_id = current_user.id
  end

  def create
    @brainstorm = Brainstorm.new(brainstorm_params)
    @brainstorm.user_id = current_user.id
    if @brainstorm.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @brainstorm = Brainstorm.find(params[:id])
  end

  def edit
    @brainstorm = Brainstorm.find(params[:id])
  end

  def update
    if @brainstorm.save
      redirect_to brainstorm_path(@brainstorm)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @brainstorm.user_id
      @brainstorm.destroy
    else
      redirect_to brainstorm_path(@brainstorm)
    end
  end

  private

  def brainstorm_params
    params.require(:brainstorm).permit(:id, :idea, :category, :user_id)
  end
end
