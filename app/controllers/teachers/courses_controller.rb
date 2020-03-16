module Teachers
  class CoursesController < BaseController
    before_action :set_course, only: [:show, :destroy]  
    
    private  def set_course
    @course = Course.find_by_course_slug(params[:course_slug])
  end
    
    def new
      @course = Course.new
  end


    def index
      @courses = current_teacher.courses
    end


    def destroy
      @course = Course.find_by_course_slug(params[:course_slug])
      @course.destroy
      redirect_to teachers_courses_path
    end

    def show
      @course = Course.find_by_course_slug(params[:course_slug])
  end     

  def create
      @course = Course.new(course_params)
      @course = current_teacher.courses.new(course_params)
      if @course.save
          redirect_to teachers_courses_path
      else
          render 'new'
      end
  end

  private def course_params
      params.require(:course).permit(:title,:course_slug)        
  end
  end
end
