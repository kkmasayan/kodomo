class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @diaries = user.diaries
    
    favorites = Favorite.where(user_id: current_user.id).pluck(:diary_id)  # ログイン中のユーザーのお気に入りのdiary_idカラムを取得
    @favorite_list = Diary.find(favorites)     # diariesテーブルから、お気に入り登録済みのレコードを取得
  end
end
