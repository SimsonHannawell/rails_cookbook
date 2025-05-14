class Bookmark < ApplicationRecord
  #associations
  belongs_to :recipe
  belongs_to :category
  #validations
  validates :comment, length: { minimum: 6 }
  validates :recipe_id, uniqueness: { scope: :category_id }
end
