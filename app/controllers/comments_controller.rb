class CommentsController < ApplicationController
  
  def show
  end

  def new
  end

  def edit
  end

  def create
  	@comment = Comment.create(params.require(:comment).permit(:body).merge(user: current_user, post_id: params[:post_id]))
  	redirect_to @comment.post
  end

  def destroy
  end

  
end
