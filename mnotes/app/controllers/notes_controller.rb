class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
    @user_id = current_user.id
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    if @note.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    if @note.save
      redirect_to note_path(@note)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @note.user_id
      @note.destroy
    else
      redirect_to note_path(@note)
    end
  end

  private

  def note_params
    params.require(:note).permit(:id, :note, :user_id)
  end

end
