class Course < ApplicationRecord
  before_create :set_slug
  
  belongs_to :teacher
  has_many :topics
  
  validates :title, presence: true, length: {minimum: 2},uniqueness: true
  validates :status, presence: true, inclusion: { in: %w(draft active archived) }

  def to_param
    "#{course_slug}"
  end
 
  private

  def set_slug
    self.course_slug = title.parameterize
  end
end
