module Teachers
  class CoursesController < BaseController
    before_action :set_course, only: [:show, :destroy]

    def new
      @course = Course.new
    end

    def index
      @courses = current_teacher.courses.all
    end

    def new
      @course = Course.new
    end

    def destroy
      @course = Course.find_by_course_slug(params[:course_slug])
      @course.destroy
      redirect_to teachers_courses_path
    end

    def show
        @course = Course.find_by_course_slug(params[:course_slug])
        #TODO проверить, мой ли это курс!
    end

    def create
        @course = Course.new(course_params)
        @course = current_teacher.courses.new(course_params)
        if @course.save
            redirect_to teachers_courses_path
        else
            render "new"
        end
    end

    private

    def set_course
      @course = Course.find_by_course_slug(params[:course_slug])
    end

    def course_params
      params.require(:course).permit(:title, :description, :course_slug)
    end
  end
end
