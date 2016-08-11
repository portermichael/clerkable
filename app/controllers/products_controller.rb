class ProductsController < ApplicationController
	def show
		@product = Product.find(params[:id])
		@department = Department.find(@product.department_id)
		@products = @department.products

		
		@items = @products.where.not(id: params[:id]).paginate(page: params[:page], per_page: 2)
		
		
		
		  
	end
end
