class ChildrenSex < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '男の子のみ' },
    { id: 2, name: '男の子と女の子' },
    { id: 3, name: '女の子のみ' }
  ]

  include ActiveHash::Associations
  has_many :users
end
