class DepartmentsController < ApplicationController
# GET /departments
  # GET /departments.json
  def index
    @departments = Department.all
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    @department = Department.find(params[:id])

      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @department }
    end
  end


  # GET /pages/new
  # GET /pages/new.json
  def new
    @department = Department.new
  end

  # GET /pages/1/edit
  def edit
    @department = Department.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @department = Department.new(params[:department])
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @department = Department.find(params[:id])
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
end