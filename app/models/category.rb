class Category < ApplicationRecord
  has_many :lessons
  has_many :users, through: :lessons
  has_many :words, dependent: :destroy
  accepts_nested_attributes_for :words, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
end
