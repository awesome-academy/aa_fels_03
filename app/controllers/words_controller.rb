class WordsController < ApplicationController

  def index
  	@all_words = Word.all
  end
end
