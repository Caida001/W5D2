class PostsController < ApplicationController
  before_action :require_login

  def new
    @post = Post.find_by(id: params[:id])
    render :new
  end

  def create
    @post = Post.find_by(id: params[:id])
    @post.author_id = current_user.id
    @post.sub_id = params[:sub_id]
    if @post.save
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def show
    @post = current_user.posts.find_by(id: params[:id])
    render :show
  end

  def edit
    @post = Post.find_by(id: params[:id])
    render :edit
  end

  def update
    unless @post.author_id == current_user.id
      flash[:errors] = ['You are not the author']
      redirect_to new_post_url
      return
    end

    @post = current_user.posts.find_by(id: params[:id])
    if @post.update(post_params)
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title,:content,:url)
  end

end
