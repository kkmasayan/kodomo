class FavoritesController < ApplicationController

before_action :set_diary
before_action :authenticate_user!   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

# お気に入り登録
def create
  if @diary.user_id != current_user.id   # 投稿者本人以外に限定
    @favorite = Favorite.create(user_id: current_user.id, diary_id: @diary.id)
    redirect_back(fallback_location: root_path) 
  end
end
# お気に入り削除
def destroy
  @favorite = Favorite.find_by(user_id: current_user.id, diary_id: @diary.id)
  @favorite.destroy
  redirect_back(fallback_location: root_path) 
end

private
def set_diary
  @diary = Diary.find(params[:diary_id])
end
end