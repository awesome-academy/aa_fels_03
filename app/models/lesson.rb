class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :lesson_words
  has_many :word_answers, through: :lesson_words

  scope :lesson_cate, -> (category_ids){ where category_id: category_ids }
end
