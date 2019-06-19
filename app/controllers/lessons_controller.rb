class LessonsController < ApplicationController
  
  def show
    @lesson = Lesson.find params[:id]
    lesson_category = @lesson.category
    lessons_of_user = current_user.lessons
    match_lessons = lessons_of_user.lesson_cate(lesson_category.id)
    @lesson_words = Word.words_of_category(lesson_category.id).create_lesson_words(match_lessons.ids)
  end

  def index
    @lessons = current_user.lessons
    @categories = Category.all
  end

  def create
    lesson = current_user.lessons.build(lesson_params)
    redirect_to lessons_path if lesson.save
  end

  private

  def lesson_params
    params.require(:lesson).permit(:category_id)
  end
end
