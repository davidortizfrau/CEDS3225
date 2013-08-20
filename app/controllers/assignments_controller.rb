class AssignmentsController < ApplicationController

  http_basic_authenticate_with name: ENV["USER"], 
                               password: ENV["PASSWORD"], 
                               only: [:new, :edit, :destroy, :update]

  def index
    @assignments = Assignment.regular
  end


  def new
    @assignment = Assignment.new
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end


  def create
    @assignment = Assignment.new(params[:assignment])


    if @assignment.save
      flash[:success] = "Assignment was successfully added... Make them work hard =)"
      redirect_to admin_path
    else
      render action: "new" 
    end

  end

  def update
    @assignment = Assignment.find(params[:id])

    if @assignment.update_attributes(params[:assignment])
      flash[:success] = "Assignment was successfully updated."
      redirect_to admin_path
    else
      render action: "edit"
    end
    
  end


  def destroy
    @assignment = Assignment.find(params[:id]).destroy

    flash[:success] = "Assignment was successfully deleted"
    redirect_to admin_url


  end
end
