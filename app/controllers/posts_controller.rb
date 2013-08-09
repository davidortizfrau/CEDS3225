class PostsController < ApplicationController
  
  http_basic_authenticate_with name: ENV["USER"], 
                               password: ENV["PASSWORD"], 
                               only: [:new, :edit, :destroy, :update]

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:success] = "Post was successfully created."
      redirect_to resources_path
    else
      render action: "new" 
    end
  
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      flash[:success] = "Post was successfullu updated."
      redirect_to root_path
    else
      render action: "edit"
    end
    
  end

  def destroy
    @post = Post.find(params[:id]).destroy

    flash[:success] = "Post was successfully deleted"
    redirect_to admin_url

  end
end
