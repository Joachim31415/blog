class EntriesController < ApplicationController
  def show
  end

  def update
  end

  def new
    if params['entry'].nil?
      @entry = Entry.new
    else
      @entry = Entry.new(params.require(:entry).permit(:title, :text))
    end
  end

  def create
    @entry = Entry.new(params.require(:entry).permit(:title, :text).merge(user_id: current_user.id))
    if @entry.save
      redirect_to entries_path
    else
      flash[:error] = "something is not right: #{@entry.errors.full_messages}"
      redirect_to new_entry_path, params
    end
  end

  def delete
  end

  def index
    @entries = Entry.where(user_id: current_user.id)
  #   ....
  end
end

