class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      @stories_not_created_by_user = Story.where.not(user: current_user)
      @game_played_by_user = Game.where(user: current_user).to_a
      @stories = [] # TO DEFINE - STOPPED HERE
      end
    else
      @stories = Story.all
    end
  end

  def index
      @stories = Story.where(user: current_user)
      @games = Game.where(user: current_user)
      @stories = Story.all
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
