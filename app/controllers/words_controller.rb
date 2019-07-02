class WordsController < ApplicationController
  def index
    if params[:filter_form] == (t".c")
      @categories = Category.all
    elsif params[:filter_form] == (t".lr")
      all_lessons = current_user.lessons
      @unlearned_words = Word.urlearned_words(all_lessons.ids)
    else
      @words = Word.all
    end
  end
end
