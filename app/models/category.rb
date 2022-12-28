class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ご飯・離乳食' },
    { id: 2, name: 'おもちゃ遊び' },
    { id: 3, name: '保育園' },
    { id: 4, name: 'お昼寝' },
    { id: 5, name: '絵本・音楽・ゲーム' },
    { id: 6, name: 'グッズ' },
    { id: 7, name: 'スポーツ・レジャー' },
    { id: 8, name: '病気' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diaries
end
