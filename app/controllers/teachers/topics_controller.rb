module Teachers
    class TopicsController < BaseController
    
        def new
            @topic = Topic.new
        end
    
        

        def edit
            @topic = Topic.find(params[:id])
        end
    
        def update
            @topic = Topic.find(params[:id])
            if @topic.update(topic_params)
                redirect_to teachers_course_topic_path(@topic)
            else
                render 'edit'
            end
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
    

        def show
            @topic = Topic.find(params[:id])
        end     


        private def topic_params
            params.require(:topic).permit(:title, :description)
            
        end
    
    end
    end