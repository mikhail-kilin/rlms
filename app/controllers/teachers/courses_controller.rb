module Teachers
  class CoursesController < BaseController
    def index
      @courses = current_teacher.courses
    end


    def destroy
      @course = Course.find(params[:id])
      @course.destroy

      redirect_to teachers_courses_path
    end
  end
end
