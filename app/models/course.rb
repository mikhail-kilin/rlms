class Course < ApplicationRecord
  belongs_to :teacher

  has_many :topics

  validates :title, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :course_slug, presence: true, uniqueness: true
  validates :status, presence: true, inclusion: { in: %w(draft active archived) }

  def to_param
    course_slug.to_s
  end
end
