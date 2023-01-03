require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿'
  context '投稿できる場合'
  it '全ての項目が存在すれば投稿できる' do
    expect(@comment).to be_valid
  end

  context '投稿できない場合'
  it 'コメント欄が空では投稿できない' do
    @comment.content = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include("Content can't be blank")
  end
end
