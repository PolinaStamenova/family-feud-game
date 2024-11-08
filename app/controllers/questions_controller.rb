class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @team_one_x_counts = TeamWrongQuestionCount.find_or_create_by(team: @question.game.teams.first, question: @question)
    @team_two_x_counts = TeamWrongQuestionCount.find_or_create_by(team: @question.game.teams.last, question: @question)
  end
end
