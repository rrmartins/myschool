class WelcomeController < ApplicationController
  def index
    @courses = Course.where(status: true)
  end
end
