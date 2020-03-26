class Topic < ApplicationRecord
    before_create :set_slug
    def to_param
        "#{topic_slug}"
     end
    belongs_to :course
    validates :title, uniqueness: { scope: :course_id,
    message: "title should be uniq in course" }
    validates :title, presence: true, length: {minimum: 2}
    validates :description, presence: true, length: {minimum: 2}
    def set_slug
        self.topic_slug = title.parameterize
      end
end
