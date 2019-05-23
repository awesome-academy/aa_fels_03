class Word < ApplicationRecord
  belongs_to :category, optional: true
  has_many :lesson_words
  has_many :learned_words
  has_many :word_answers
  accepts_nested_attributes_for :word_answers, allow_destroy: true, reject_if: proc { |att| att['description'].blank? }

  def self.create_lesson_words(match_lessons_ids)
    # Select All Lesson Words of match_lessons
    lesson_words = LessonWord.words_of_lesson(match_lessons_ids)
    # Find All Answers of Lesson Words
    @word_answers = WordAnswer.joins(:lesson_words)
    # Select the answers have status = correct
    correct_answers_ids = "SELECT word_id FROM #{@word_answers}
                           WHERE status = Correct"

    skip_word_ids = Word.where("word_id IN (#{correct_answers_ids})")

    Word.where("word_id NOT IN (#{skip_word_ids})")
  end
end
