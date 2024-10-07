class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :edit, :update, :destroy]
  def new
    @course = Course.new
  end
  def show
    # @course は set_course メソッドによって取得される
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: '履修情報が保存されました。'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: '履修情報が更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: '履修情報が削除されました。'
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :credits)
  end
end
