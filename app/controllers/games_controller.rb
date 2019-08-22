class GamesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @questions = @story.questions
    @game = Game.new(user: current_user, story: @story)
    @game.save
    redirect_to "/stories/#{@story.id}/questions/#{@questions[0].id}"
  end
end
