class RelationshipsController < ApplicationController

  def index
  	@relationships = Relationship.all
  end
  
  def new
  	@relationship = Relationship.new
  end

  def create
  end

  def edit
  	@relationship = Relationship.find(params[:id])
  end

  def update
  	  @relationship = Relationship.find(params[:id])
    if @relationship.update_attributes(product_params)
      flash[:success] = "Product updated"
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def relationship_params
      params.require(:relationship).permit(:follower_id, :followed_id)
    end
end
