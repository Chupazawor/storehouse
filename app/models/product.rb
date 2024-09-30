class Product < ApplicationRecord
  validates :make, :model, :article, presence: true, length: { in: 2..50 }
  validates :description, presence: true, length: { in: 2..1000 }
  validates :price, :quantity, presence: true
end
