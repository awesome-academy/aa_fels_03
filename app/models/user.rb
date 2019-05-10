class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons
  has_many :categories, through: :lessons
  has_many :learned_words
  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  def role_enum
    ["admin", "member"]
  end
end
