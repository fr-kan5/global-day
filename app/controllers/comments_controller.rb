class CommentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @comments = Comment.includes(:user).order("created_at DESC")

  end
  

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_comments_path(@post.id)
    else
      render 'posts/show'
    end
  end



  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
