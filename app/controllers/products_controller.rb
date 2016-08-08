class ProductsController < ApplicationController
	def show
		@product = Product.find(params[:id])
		@department = Department.find(@product.department_id)
		@products = @department.products
		@tags = @department.tags
		@tag = @tags.first
		@traits = Trait.where(product: @products)
		@items = @products.where.not(id: params[:id]).paginate(page: params[:page], per_page: 2)
		@quirks = @traits.where.not(product_id: params[:id]).paginate(page: params[:page], per_page: 2)
		
		
		  
	end
end
