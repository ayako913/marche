class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '久喜無人販売所' },
    { id: 3, name: '高崎無人販売所' },
    { id: 4, name: '藤崎無人販売所' },
  ]

  include ActiveHash::Associations
  has_many :vegetables

end