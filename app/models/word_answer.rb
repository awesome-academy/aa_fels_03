class WordAnswer < ApplicationRecord
  belongs_to :word, optional: true
  has_many :lesson_words
end
