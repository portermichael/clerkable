class ProductsController < ApplicationController
  before_action :logged_in_user, only: [:index, :new, :create, :edit, :update, :destroy]

	def index
    @products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@department = @product.department
    @roots = Department.roots
    @ancestors = @department.ancestors
    @children = @department.children
		@products = @department.products
    @following = @department.following
	end

	def new
    @product = Product.new
 	end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = current_user.products.build(product_params)
    if @product.save
      flash[:success] = "Product Created!"
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "Product updated"
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    flash[:success] = "Relationship Deleted"
    redirect_to root_url
    end

  private

    def product_params
      params.require(:product).permit(:product_name, :department_id, :youtube_id, :youtube_thumbnail_id,
        :msrp, :expected, :first_seller, :first_price, :first_link, :second_seller, :second_price, :second_link,
        :third_seller, :third_price, :third_link, :fourth_seller, :fourth_price, :fourth_link, :fifth_seller,
        :fifth_price, :fifth_link, :first_glance, :second_glance, :third_glance, :fourth_glance, :fifth_glance,
        :first_feature, :second_feature, :third_feature, :fourth_feature, :fifth_feature, :first_spec, :second_spec,
        :third_spec, :fourth_spec, :fifth_spec, :benefits)
    end
end