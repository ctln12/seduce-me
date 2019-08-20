class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @story = Story.find(params[:story_id])
    @question = Question.find(params[:id])
  end
end
