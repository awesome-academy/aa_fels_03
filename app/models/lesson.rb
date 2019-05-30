class Lesson < ApplicationRecord
  after_create_commit :notify
  belongs_to :user
  belongs_to :category
  has_many :lesson_words

  private
  def notify
  	Notification.create(event: "New Notification (#{self.body})")
  end
end
