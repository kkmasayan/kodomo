class Diary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one_attached :image
  belongs_to :user, optional: true
  has_many :comments
  has_many :favorites, dependent: :destroy
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
>>>>>>> 6688c3eea5a269900823cc85f453671ffb98ae74

<<<<<<< Updated upstream
=======
<<<<<<< HEAD
=======
>>>>>>> Stashed changes

=======
>>>>>>> d686ea1030dd56fed5b6d7819a90ffd2f225d68c
>>>>>>> Stashed changes
  with_options presence: true do
    validates :title, :text
  end

  with_options numericality: { other_than: 0, message: "can't be blank" } do
    validates :category_id
  end
end
