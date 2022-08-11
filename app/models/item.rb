class Item < ApplicationRecord

  has_many :cart_items
  belongs_to :genre
  has_many :order_items

  has_one_attached :image
  enum is_active: {now: true, no: false }

  validates :name,  presence: true
  validates :genre_id, presence: true
  validates :introduction, presence: true
  validates :price, presence: true

  def with_tax_price
    (price * 1.1).floor
  end
end
