class User < ApplicationRecord
  has_many :lessons
  has_many :categories, through: :lessons
  has_many :learned_words
end
