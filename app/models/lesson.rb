class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :lesson_words
  has_many :word_answers, through: :lesson_words
  scope :lesson_cate, -> (category_ids){ where category_id: category_ids }

  def update_lesson(params_user_answers)
    ActiveRecord::Base.transaction do
      @answers = WordAnswer.answers_of_user(params_user_answers)
      @answers.each do |answer|
        lesson_word = self.lesson_words.build(word_id: "#{answer.word.id}", word_answer_id: "#{answer.id}")
        lesson_word.save
      end
      mark = @answers.count_result_of_lesson.count
      self.update_attributes!(mark: mark)
    end
  end

  def update_result(mark_params)
    ActiveRecord::Base.transaction do
      self.update_attributes!(mark: mark_params)
    end
  end
end
