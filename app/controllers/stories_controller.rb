class StoriesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :gameover, :win]
  def index
    @stories = Story.all
  end

  def gameover
    @story = Story.find(params[:id])
    @questions = @story.questions
  end

  def win
    @story = Story.find(params[:id])
    @questions = @story.questions
  end
end
