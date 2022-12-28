class ChildrenAge < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '0~5才' },
    { id: 2, name: '6~12才' },
    { id: 3, name: '12~15才' },
    { id: 4, name: '0~12才' },
    { id: 5, name: '0~15才' },
    { id: 6, name: '6~15才' }
  ]

  include ActiveHash::Associations
  has_many :users
end
