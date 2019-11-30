class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post: post_params[:post], user_id: current_user.id)

    redirect_to posts_path
  end

  def edit
  end

  def update
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:post)
  end
end
