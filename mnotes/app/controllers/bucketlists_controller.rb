class BucketlistsController < ApplicationController
  def index
    @bucketlists = Bucketlist.all
  end

  def new
    @bucketlist = Bucketlist.new
    @user_id = current_user.id
  end

  def create
    @bucketlist = Bucketlist.new(bucketlist_params)
    @bucketlist.user_id = current_user.id
    if @bucketlist.save
      redirect_to bucketlist_path(@bucketlist)
    else
      render :new
    end
  end

  def show
    @bucketlist = Bucketlist.find(params[:id])
  end

  def edit
    @bucketlist = Bucketlist.find(params[:id])
  end

  def update
    if @bucketlist.save
      redirect_to bucketlist_path(@bucketlist)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @bucketlist.user_id
      @bucketlist.destroy
    else
      redirect_to bucketlist_path(@bucketlist)
    end
  end

  private

  def bucketlist_params
    params.require(:bucketlist).permit(:id, :item, :category, :user_id)
  end
end
