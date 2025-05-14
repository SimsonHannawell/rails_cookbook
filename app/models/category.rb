class Category < ApplicationRecord
  #associations
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks
  #validations
  validates :name, uniqueness: true, presence: true
end
