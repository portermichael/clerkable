class ProductsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
	def index
    @products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@department = Department.find(@product.department_id)
		@products = @department.products
	end
	def new
 	 end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
