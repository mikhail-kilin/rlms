module Teachers
    class TopicsController < BaseController
        before_action :set_topic, only: [:show, :destroy, :edit]

        private  def set_topic
            @topic = Topic.find_by_topic_slug(params[:topic_slug])
        end

        def new
            @topic = Topic.new
        end



        def edit
            @topic = Topic.find_by_topic_slug(params[:topic_slug])
        end

        def update
            @topic = Topic.find_by_topic_slug(params[:topic_slug])
            if @topic.update(topic_params)
                redirect_to teachers_course_topic_path(@topic)
            else
                render "edit"
            end
        end

        def create
            @course = Course.find_by_course_slug(params[:course_course_slug])
            @topic = @course.topics.new(topic_params)
            @topic.course = @course
            @topic.save

            redirect_to teachers_course_path(@course)
        end

        def destroy
            @topic = Topic.find_by_topic_slug(params[:topic_slug])
            @topic.destroy
        end


        def show
            @topic = Topic.find_by_topic_slug(params[:topic_slug])
        end

        private def topic_params
            params.require(:topic).permit(:title, :description, :topic_slug)

        end

    end
    end
