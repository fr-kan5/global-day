class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.includes(:user).order('created_at DESC')
    @like = Like.new
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

  def show
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
    @user = @comment.user
    @like = Like.new
  end

  def destroy
    if user_signed_in? && current_user == @post.user
      @post.destroy
      redirect_to posts_path
    else
      @posts = Post.all.order('created_at DESC')
      render :index
    end
  end

  def edit
    if user_signed_in? && current_user == @post.user
      render :edit
    else
      redirect_to posts_path
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :place, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
