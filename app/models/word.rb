class Word < ApplicationRecord
  belongs_to :category, optional: true
  has_many :lesson_words
  has_many :learned_words
  has_many :word_answers
  accepts_nested_attributes_for :word_answers, allow_destroy: true, reject_if: proc { |att| att['description'].blank? }

  def self.unlearned_words(lessons_ids)
    # Select All Lesson Words of match_lessons
    lesson_words = LessonWord.words_of_lesson(lessons_ids)
    # Find All Answers of Lesson Words
    word_answers = WordAnswer.where(id: lesson_words.pluck(:word_answer_id))
    # Select learned words were the answers had status = correct
    @learned_words = Word.where(id: word_answers.where(status: "Correct").pluck(:word_id))
    # Create Unlearned Words are Words without learned words
    Word.where.not(id: @learned_words.pluck(:id))
  end
end
