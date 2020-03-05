class Topic < ApplicationRecord
    belongs_to :course
    validates :title, uniqueness: { scope: :course_id,
    message: "title should be uniq in course" }
end
