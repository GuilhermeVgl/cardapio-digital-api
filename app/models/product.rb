class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :amountPeople, presence: true
  validates :images, presence: true
  validates :category, presence: true
end