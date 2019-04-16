class Category < ApplicationRecord
  has_many :lessons
  has_many :users, through: :lessons
  has_many :words
end
