require "rails_helper"

describe Course do
  it { should have_many :topics }
  it { should belong_to :teacher }

  it { should validate_presence_of :title }
  it { should validate_presence_of :course_slug }
  it { should validate_presence_of :status }
end
