module Teachers
  class BaseController < ApplicationController
    before_action :authenticate_teacher!
  end
end
