module Teachers
  class CoursesController < BaseController
    def index
      @courses = current_teacher.courses.all
    end

    def new
      @course = Course.new
    end

    def create
      @course = current_teacher.courses.new(course_params)
    end

    def destroy
      @course = Course.find(params[:id])
      @course.destroy

      redirect_to teachers_courses_path
    end

    private
  
    def course_params
      params.require(:course).permit(:title, :description)
    end
  end
end
