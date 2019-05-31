class WordsController < ApplicationController
  def index
    if params[:filter_form] == (t".c")
      @categories = Category.all
    else
      @words = Word.all
    end
  end
end
