module Learners
  class BaseController < ApplicationController
    before_action :authenticate_learner!
  end
end
