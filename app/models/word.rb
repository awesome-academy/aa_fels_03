class Word < ApplicationRecord
  belongs_to :category, optional: true
  has_many :lesson_words
  has_many :learned_words
  has_many :word_answers
  accepts_nested_attributes_for :word_answers, allow_destroy: true, reject_if: proc { |att| att['description'].blank? }


  # scope :words_of_category,
  # scope :words_learned,
  # scope :words_unlearned,
end
