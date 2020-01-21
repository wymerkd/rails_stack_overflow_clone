class AnswersController < ApplicationController

  def index
    @answers = Answer.all
    :index
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    # binding.pry
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to root_path
    else
      render :new

  end

  def edit
    @answer = Answer.find(params[:id])
    @question = Question.find(params[:question_id])
    render :edit
  end

  def show
  @answer = Answer.find(params[:id])
  render :show
  end

  def update
    @answer= Answer.find(params[:id])
      if @answer.update(answer_params)
        flash[:notice] = "Answer successfully updated"
        redirect_to question_path(params[:question_id])
      else
        flash[:alert] = "Answer unable to be updated"
        render :edit
      end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:notice] = "Answer successfully deleted"
    redirect_to root_path
  end
end

private
def answer_params
  params.require(:answer).permit(:answer, :user_id)
end
end
