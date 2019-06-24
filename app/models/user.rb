class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons
  has_many :categories, through: :lessons
  has_many :learned_words
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  def role_enum
    ["admin", "member"]
  end

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

  def self.koala(auth)
  # Get Token and Information
    access_token = auth["token"]
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture")
  end

  def self.create_with_omniauth(auth)
  # Check user exist or empty ?
    check_user = find_or_create_by(uid: auth["uid"], provider: auth["provider"])
    check_user.email = auth["info"]["email"]
    check_user.name = auth["info"]["name"]
    check_user.password = "123456"
  # Create User
    if User.exists?(check_user)
      check_user
    else
      check_user.save!
      check_user
    end
  end
end
