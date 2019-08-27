class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if user_signed_in?
      @stories = []
      Story.all.where.not(user: current_user).each do |story|
        @stories << story if story.games.where(user: current_user).empty?
      end
    else
      @stories = Story.all
    end
  end

  def gameover
    @story = Story.find(params[:id])
    @questions = @story.questions
    @game = Game.where(user: current_user, story: @story).first
  end

  def win
    @story = Story.find(params[:id])
    @questions = @story.questions
    @game = Game.where(user: current_user, story: @story).first
    @game.score = @questions.count
    @game.save
  end
end
