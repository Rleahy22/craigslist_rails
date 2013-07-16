class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user
    else 
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])

    if @user.save
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to :root
  end
  
end
