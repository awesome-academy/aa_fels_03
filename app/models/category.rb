class Category < ApplicationRecord
  has_many :lessons
  has_many :users, through: :lessons
  has_many :words

  accepts_nested_attributes_for :words
end
