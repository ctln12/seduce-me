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
    current_user.ranking = compute_ranking
    current_user.save
  end

  def win
    @story = Story.find(params[:id])
    @questions = @story.questions
    @game = Game.where(user: current_user, story: @story).first
    @game.score = @questions.count
    @game.save
    current_user.ranking = compute_ranking
    current_user.save
  end

  private

  def compute_ranking
    all_games = Game.where(user: current_user)
    games_won = Game.where(user: current_user, score: 3)
    (games_won.count.fdiv(all_games.count) * 100).to_i
  end
end
