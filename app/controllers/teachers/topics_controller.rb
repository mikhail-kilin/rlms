module Teachers
    class TopicsController < BaseController
    
        def new
            @topic = Topic.new
        end
    
        def create
            @course = Course.find(params[:course_id])
            @topic = @course.topics.new(topic_params)
            @topic.course = @course
            @topic.save
            redirect_to teachers_course_path(@course) 
        end
    
        def destroy 
            @topic = Topic.find(params[:id])
            @topic.destroy
        end
    
        private def topic_params
            params.require(:topic).permit(:title, :description)
            
        end
    
    end
    end