class DiariesController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
    @diary = Diary.new
  end
  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :text, :category_id, :image).merge(user_id: current_user.id)
  end
end
