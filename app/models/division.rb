class Division < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '一般' },
    { id: 3, name: '農家' },
    { id: 4, name: '店舗' },
  ]

  include ActiveHash::Associations
  has_many :users

end