class DiariesController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]
  before_action :set_diary, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  def index
    @diaries = Diary.order('created_at DESC')
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

  def show
    @comment = Comment.new
    @comments = @diary.comments.includes(:user)
  end
  
  def edit
  end

  def update
    if @diary.update(diary_params)
      redirect_to diary_path
    else
      render :edit
    end
  end

  def destroy
    @diary.destroy
    redirect_to root_path
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :text, :category_id, :image).merge(user_id: current_user.id)
  end
  def set_diary
    @diary = Diary.find(params[:id])
  end
  def move_to_index
    redirect_to action: :index unless current_user.id == @diary.user_id
  end
end
