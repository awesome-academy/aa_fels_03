class WordAnswer < ApplicationRecord
  belongs_to :words
  has_many :lesson_words
end
