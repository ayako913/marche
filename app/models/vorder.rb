class Vorder < ApplicationRecord
  belongs_to :user
  belongs_to :vegetable

  attr_accessor :token
end
