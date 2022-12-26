class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  belongs_to :children_sex
  belongs_to :children_number
  belongs_to :children_age
  has_many   :diaries
  has_many   :comments
  has_many :favorites, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
          validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
      
          validates :nickname, :birthday
          validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/,
                                           message: 'is invalid. Input full-width characters' }
      
          validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/,
                                          message: 'is invalid. Input full-width characters' }
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/,
                                                message: 'is invalid. Input full-width katakana characters' }
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/,
                                               message: 'is invalid. Input full-width katakana characters' }
        end

        with_options numericality: { other_than: 0, message: "can't be blank" } do
          validates :sex_id, :children_sex_id, :children_number_id, :children_age_id
        end
      
end
