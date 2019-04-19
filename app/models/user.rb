class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons
  has_many :categories, through: :lessons
  has_many :learned_words

  def role_enum
    ["admin", "member"]
  end
end
