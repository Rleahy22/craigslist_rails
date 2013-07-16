class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = 1

    if @post.save
      redirect_to @post
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])

    if @post.save
      redirect_to @post
    else
      render "edit"
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to :root
  end
  
end
