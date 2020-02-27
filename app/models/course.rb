class Course < ApplicationRecord
  belongs_to :teacher
  validates :status, presence: true, inclusion: { in: %w(draft active archived) }
end
