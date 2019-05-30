class Notification < ApplicationRecord
  after_create_commit :push_to_job

  private

  def push_to_job
  	NotificationBroadcastJob.perform_later(Notification.count,self)
  end
end
