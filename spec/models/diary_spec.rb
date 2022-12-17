require 'rails_helper'

RSpec.describe Diary, type: :model do
before do
  @diary = FactoryBot.build(:diary)
end

describe '日記投稿' 
  context '投稿できる場合' 
  it '全ての項目が存在すれば投稿できる' do
    expect(@diary).to be_valid
  end
  it '画像がなくても投稿できる' do
    @diary.image = nil
    expect(@diary).to be_valid
  end

  context '投稿できない場合'
  it 'タイトルがなければ投稿できない' do
    @diary.title = nil
    @diary.valid?
    expect(@diary.errors.full_messages).to include("Title can't be blank")
  end
  it 'カテゴリーがなければ投稿できない' do
    @diary.category_id = nil
    @diary.valid?
    expect(@diary.errors.full_messages).to include("Category can't be blank")
  end
  it '日記内容がなければ投稿できない' do
    @diary.text = nil
    @diary.valid?
    expect(@diary.errors.full_messages).to include("Text can't be blank")
  end
end
