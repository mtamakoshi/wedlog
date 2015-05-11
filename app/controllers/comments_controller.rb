class CommentsController < ApplicationController

  def show
    @comments = Comment.all
  end

  def new

  end

  def edit
  end

  def create
    @comment = Comment.create(params.require(:comment).permit(:comment_body).merge(user: current_user, post_id: params[:post_id]))
    redirect_to @comment.post
  end

  def destroy
  end

  
end


