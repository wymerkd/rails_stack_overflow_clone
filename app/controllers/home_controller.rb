class HomeController < ApplicationController
  def index
    @questions = Question.all
    :index
  end
end
