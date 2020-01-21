class HomeController < ApplicationController
  def index
    @questions = Question.all
    if session[:user_id] != nil
      @user = User.find(session[:user_id])

    end
    :index
  end
end
