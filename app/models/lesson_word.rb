class LessonWord < ApplicationRecord
  belongs_to :word
  belongs_to :lesson
  belongs_to :word_answer

  scope :words_of_lesson, -> (lesson_ids){ where lesson_id: lesson_ids }
end
