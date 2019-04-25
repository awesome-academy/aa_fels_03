class Word < ApplicationRecord
  belongs_to :category
  has_many :lesson_words
  has_many :learned_words

  # scope :sorf_by_alphabet, -> 
  # scope :sorf_by_categories,

  # scope :newest_by_desc, -> {order "created_at DESC"}
  # scope :newest_by_id, -> {order "posts.id DESC"}
  # scope :posts_of_category, -> (category_id){where category_id: category_id}
end
