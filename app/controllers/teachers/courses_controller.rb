module Teachers
  class CoursesController < BaseController
    
    def new
      @course = Course.new
  end


    def index
      @courses = current_teacher.courses
    end


    def destroy
      @course = Course.find(params[:id])
      @course.destroy

      redirect_to teachers_courses_path
    end

    def show
      @course = Course.find(params[:id])
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
      params.require(:course).permit(:title)        
  end
  end
end
