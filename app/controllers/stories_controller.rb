class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :gameover, :win]

  def index
    @stories = Story.all
  end

  def gameover
  end

  def win
  end
end
