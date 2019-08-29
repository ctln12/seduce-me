class UsersController < ApplicationController
  before_action :user_is_current_user, only: :show

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_is_current_user
    if current_user != User.find(params[:id])
      redirect_to root_path, notice: "Sorry, but you are only allowed to view your own dashboard."
    end
  end
end
