class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
  end


  def new
    if current_user
      @post = Post.new
    else
      flash[:notice]="Please sign in order to post"
      redirect_to login_path
    end
  end

  def show
    @comment = Comment.new
  end

  # def edit
  #   @post = Post.find(params[:id])
  #   redirect_to @posts_path, 
  #   flash[:notice] = "Your post was updated"
  #   else
  #     render :edit
  # end

  def create
    @post = Post.create(post_params)
    #or 
    #@post = Post.create(:post_body: params[:post][:post_body], session[:user_id])
    flash[:notice] = "Your post was created. Thank you for sharing."
    redirect_to posts_path 
  end

  def update
    if current_user
      @post.update(post_params)
    redirect_to posts_path, notice: "Your post was updated"
    else
      render :edit
    end
  end


  def destroy
    if current_user
        @post = Post.find(params[:id])
        @post.destroy
        flash[:notice] = "Your post has been deleted."
        redirect_to posts_path
    else
     redirect_to '/'
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :post_body).merge(user: current_user)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end