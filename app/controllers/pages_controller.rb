class PagesController < ApplicationController
  http_basic_authenticate_with name: ENV["USER"], 
  														 password: ENV["PASSWORD"], 
  														 only: :admin

  def resources
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    elsif params[:assignment]
      @assignment = Assignment.find(params[:assignment])
      @posts = @assignment.posts
    else
      @posts = Post.all
    end
  end

  def assignments
  end

  def syllabus
  end

  def admin
    @posts = Post.all
    @assignments = Assignment.all
  end
end
