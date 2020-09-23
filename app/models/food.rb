class Food < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  def self.search(search)
    if search != ""
      Food.where("product LIKE(?)", "%#{search}%")
    else
      Food.all
    end
  end
end
