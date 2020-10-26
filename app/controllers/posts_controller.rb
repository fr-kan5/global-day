class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path(current_user.id)
    else
      render action: :new
    end

  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :place, :image).merge(user_id: current_user.id)
  end
end
