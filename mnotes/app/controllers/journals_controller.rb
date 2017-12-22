class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
    @user_id = current_user.id
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user_id = current_user.id
    if @journal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def edit
    @journal = Journal.find(params[:id])
  end

  def update
    if @journal.save
      redirect_to journal_path(@journal)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @journal.user_id
      @journal.destroy
    else
      redirect_to journal_path(@journal)
    end
  end

  private

  def journal_params
    params.require(:journal).permit(:id, :entry, :user_id)
  end

end
