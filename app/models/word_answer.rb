class WordAnswer < ApplicationRecord
  belongs_to :word, optional: true
  has_many :lesson_words
  has_many :lessons, through: :lesson_words
  scope :answers_of_user,-> (user_ids){ where id: user_ids }
  scope :count_result_of_lesson,-> { where status: "Correct" }

  def status_enum
    ["Correct", "Wrong"]
  end
end
