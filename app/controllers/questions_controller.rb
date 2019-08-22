class QuestionsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :show
  def show
    @story = Story.find(params[:story_id])
    @question = Question.find(params[:id])
    @game = Game.where(user: current_user, story: @story).first
    @game.score = (@question.number - 1)
    @game.save
  end
end
