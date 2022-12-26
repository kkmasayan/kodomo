class Diary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one_attached :image
  belongs_to :user
  has_many :comments
  has_many :favorites, dependent: :destroy


  with_options presence: true do
    validates :title, :text
  end

  with_options numericality: { other_than: 0, message: "can't be blank" } do
    validates :category_id
  end
end
