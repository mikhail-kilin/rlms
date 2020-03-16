class Course < ApplicationRecord
  before_create :set_slug
  def to_param
    "#{course_slug}"
  end
  belongs_to :teacher
  has_many :topics
  validates :title, presence: true, length: {minimum: 2},uniqueness: true  
  private
  def set_slug
    self.course_slug = title.parameterize
  end
end
