class Vegetable < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :place
  has_one_attached :image
  belongs_to :user

  validates :vegetable, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :place_id, numericality: { other_than: 1 } 

  def self.search(search)
    if search != ""
      Vegetable.joins(:user).where('users.city_area LIKE(?)', "%#{search}%")
    else
      Vegetable.all
    end
  end
end
