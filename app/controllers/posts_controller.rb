class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def edit
  end

  def show
  	@comment = Comment.new
  end

  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(post_params)
  	
  end

  def destroy
  	@post.destroy
  	flash[:notice] = "Post was delted. Do you want to post it again?"
  	redirect_to posts_path
  	
  end

  private

  def post_params
  	params.require(:post).permit(:comment_body).merge(user: current_user)
  end

  def set_post
	@post = Post.find(params[:id])
  end

end
