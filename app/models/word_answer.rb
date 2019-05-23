class WordAnswer < ApplicationRecord
  belongs_to :word, optional: true
  has_many :lesson_words
  has_many :lessons, through: :lesson_words

  def status_enum
    ["Correct", "Wrong"]
  end
end
