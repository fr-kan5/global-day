class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts
  end

  def edit
  end

  def update
  end
end
