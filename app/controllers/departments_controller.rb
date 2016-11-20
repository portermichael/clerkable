class DepartmentsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
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
    @department = current_user.departments.build(department_params)
    if @department.save
      flash[:success] = "Department Created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def update
    @department = Department.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
end