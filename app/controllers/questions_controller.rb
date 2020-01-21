class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    :index
  end

  def new
    @question = Question.new
    :new
  end

  def create
    # binding.pry
    @user = User.find(session[:user_id])
      @question = Question.new(question_params )
    # @question = @user.questions.new(question_params)

    if @question.save
      redirect_to root_path
    else
      render :new

  end

  def edit
    @user = User.find(session[:user_id])
    @question = Question.find(params[:id])

    render :edit
  end

  def show
    @user = User.find(session[:user_id])
  @question = Question.find(params[:id])
   @highest_rated = Answer.three_highest_rated
  render :show
  end

  def update
    @question= Question.find(params[:id])
      if @question.update(question_params)
        flash[:notice] = "Question successfully updated"
        redirect_to question_path
      else
        flash[:alert] = "Question unable to be updated"
        render :edit
      end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question successfully deleted"
    redirect_to root_path
  end
end

private
def question_params
  params.require(:question).permit(:question_content, :user_id)
end
end
