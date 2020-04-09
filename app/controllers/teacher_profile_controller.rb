class TeacherProfileController < ApplicationController
  def show
    @teacher = Teacher.find params[:id]
    @courses = @teacher.courses
  end
end
