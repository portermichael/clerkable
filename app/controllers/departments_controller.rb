class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @products = @department.products
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @department }
    end
  end

  def new
    @department = Department.new
  end

  def edit
    @department = Department.find(params[:id])
  end

  def create
    @department = Department.new(params[:department])
  end

  def update
    @department = Department.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
end