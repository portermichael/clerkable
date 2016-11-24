class DepartmentsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @products = @department.products
    @followers = @department.followers
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
      redirect_to @department
    else
      render 'new'
    end
  end

  def update
    @department = Department.find(params[:id])
    if @department.update_attributes(department_params)
      flash[:success] = "Department updated"
      redirect_to @department
    else
      render 'edit'
    end
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end

  private
  #glances, features and specs are hard set to simplify tracking for dept/prod consistency and current set up efficiency
    def department_params
      params.require(:department).permit(:department_name, :ancestry, :youtube_id, :youtube_thumbnail_id, :first_glance_name, :second_glance_name,
      :third_glance_name, :fourth_glance_name, :fifth_glance_name, :first_feature_name, :second_feature_name, :third_feature_name,
       :fourth_feature_name, :fifth_feature_name, :first_spec_name, :second_spec_name, :third_spec_name, :fourth_spec_name, :fifth_spec_name)
    end
end