class Word < ApplicationRecord
  belongs_to :category
  has_many :lesson_words
  has_many :learned_words
end
