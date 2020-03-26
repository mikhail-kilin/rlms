require "rails_helper"

describe Learner do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
