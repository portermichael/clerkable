class ProductsController < ApplicationController
	def show
		@product = Product.find(params[:id])
		@department = Department.find(@product.department_id)
		@products = @department.products
	end
end
