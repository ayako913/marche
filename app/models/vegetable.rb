class Vegetable < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :place
  has_one_attached :image
  belongs_to :user

  def self.search(search)
    if search != ""
      Vegetable.joins(:user).where('users.city_area LIKE(?)', "%#{search}%")
    else
      Vegetable.all
    end
  end
end
