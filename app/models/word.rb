class Word < ApplicationRecord
  belongs_to :category, optional: true
  has_many :lesson_words
  has_many :learned_words
  has_many :word_answers
  accepts_nested_attributes_for :word_answers, allow_destroy: true, reject_if: proc { |att| att['description'].blank? }
  scope :words_of_category, -> (category_ids){ where category_id: category_ids }

  def self.create_lesson_words(match_lessons_ids)
    # Select All Lesson Words of match_lessons
    lesson_words = LessonWord.words_of_lesson(match_lessons_ids)
    # Find All Answers of Lesson Words
    word_answers = WordAnswer.joins(:lesson_words)
    # Select the word_ids of the answers have status = correct
    skip_word_ids = Word.where(id: word_answers.where(status: "Correct").pluck(:word_id)).pluck(:id)
    # Create LessonWords without skip_word
    Word.where.not(id: skip_word_ids).limit(20)
  end
end
