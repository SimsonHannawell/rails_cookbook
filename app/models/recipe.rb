class Recipe < ApplicationRecord
  #associations
  has_many :bookmarks
  has_many :categories, through: :bookmarks
  #validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
