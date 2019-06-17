class LessonsController < ApplicationController

  def index
    @lessons = current_user.lessons
    @categories = Category.all
  end

  def create
    lesson_category = Category.find(params[:lesson][:category_id])
    lessons_of_user = current_user.lessons
    match_lessons = lessons_of_user.lesson_cate(lesson_category.id)
    @lesson_words = Word.create_lesson_words(match_lessons.ids)
    lesson = current_user.lessons.build(lesson_params)
    lesson.save
    redirect_to lessons_path
  end

  private

  def lesson_params
    params.require(:lesson).permit(:category_id)
  end
end
